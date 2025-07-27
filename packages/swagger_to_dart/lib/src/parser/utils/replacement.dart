import 'dart:io';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';

/// Annotation dùng để đánh dấu các method cần replace.
class ReplaceFor {
  final String apiClientName;
  final String functionName;

  const ReplaceFor(this.apiClientName, this.functionName);
}

/// Thực thi việc quét và thay thế method được annotate bằng @ReplaceFor
class MethodReplacement {
  final Glob _pattern;

  MethodReplacement({String filePattern = '**/*.method.dart'})
      : _pattern = Glob(filePattern);

  Future<List<MethodBuilder>> run() async {
    List<MethodBuilder> methods = [];
    await for (final entity in _pattern.list(root: Directory.current.path)) {
      if (entity is File) {
        var mb = await processFile(entity as File);
        methods.addAll(mb);
      }
    }

    return methods;
  }

  Future<List<MethodBuilder>> processFile(File file) async {
    final content = await file.readAsString();
    final unit = parseString(content: content, path: file.path).unit;

    final methodBuilders = <MethodBuilder>[];

    final classes = unit.declarations.whereType<ClassDeclaration>();

    for (final classDeclaration in classes) {
      print('Processing Class: ${classDeclaration.name.lexeme}');

      final methods = classDeclaration.members.whereType<MethodDeclaration>();

      for (final method in methods) {
        final mb = MethodBuilder()
          ..name = method.name.lexeme
          ..returns = refer(method.returnType?.toSource() ?? 'dynamic')
          ..modifier = method.body.isAsynchronous ? MethodModifier.async : null;

        for (final meta in method.metadata) {
          final annotationName = meta.name.name;

          // Check if the annotation has parentheses
          final hasParentheses = meta.arguments != null;

          final args = meta.arguments?.arguments;
          final annotationCode = hasParentheses &&
                  args != null &&
                  args.isNotEmpty
              ? '$annotationName(${args.map((arg) => arg.toSource()).join(', ')})'
              : hasParentheses
                  ? '$annotationName()' // Annotation has empty parentheses
                  : '$annotationName'; // Annotation without parentheses

          mb.annotations.add(refer(annotationCode));
        }

        // Copy parameters
        if (method.parameters != null) {
          for (var p in method.parameters!.parameters) {
            // Handle DefaultFormalParameter and SimpleFormalParameter
            final parameter = p is DefaultFormalParameter ? p.parameter : p;

            if (parameter is SimpleFormalParameter) {
              final name = parameter.name?.lexeme;
              final type = parameter.type?.toSource() ?? 'dynamic';

              // Determine if the parameter is required
              final isRequiredPositional = p.isRequiredPositional;
              final isRequiredNamed = p.isNamed && p.isRequiredNamed;

              if (name != null) {
                if (p.isNamed) {
                  // Named parameter
                  mb.optionalParameters.add(Parameter((pb) {
                    pb
                      ..name = name
                      ..type = refer(type)
                      ..named = true
                      ..required = isRequiredNamed; // Handle `required` keyword

                    // Add annotations for the parameter
                    for (final meta in parameter.metadata) {
                      final annotationName = meta.name.name;

                      // Check if the annotation has parentheses
                      final hasParentheses = meta.arguments != null;

                      final args = meta.arguments?.arguments;
                      final annotationCode = hasParentheses &&
                              args != null &&
                              args.isNotEmpty
                          ? '$annotationName(${args.map((arg) => arg.toSource()).join(', ')})'
                          : hasParentheses
                              ? '$annotationName()' // Annotation has empty parentheses
                              : '$annotationName'; // Annotation without parentheses

                      pb.annotations.add(CodeExpression(Code(annotationCode)));
                    }
                  }));
                } else {
                  // Positional parameter
                  mb.requiredParameters.add(Parameter((pb) {
                    pb
                      ..name = name
                      ..type = refer(type);

                    // Add annotations for the parameter
                    for (final meta in parameter.metadata) {
                      final annotationName = meta.name.name;

                      // Check if the annotation has parentheses
                      final hasParentheses = meta.arguments != null;

                      final args = meta.arguments?.arguments;
                      final annotationCode = hasParentheses &&
                              args != null &&
                              args.isNotEmpty
                          ? '$annotationName(${args.map((arg) => arg.toSource()).join(', ')})'
                          : hasParentheses
                              ? '$annotationName()' // Annotation has empty parentheses
                              : '$annotationName'; // Annotation without parentheses

                      pb.annotations.add(CodeExpression(Code(annotationCode)));
                    }
                  }));
                }
              }
            } else if (parameter is DefaultFormalParameter) {
              // Handle DefaultFormalParameter
              final innerParameter = parameter.parameter;
              if (innerParameter is SimpleFormalParameter) {
                final name = innerParameter.name?.lexeme;
                final type = innerParameter.type?.toSource() ?? 'dynamic';

                if (name != null) {
                  mb.optionalParameters.add(Parameter((pb) {
                    pb
                      ..name = name
                      ..type = refer(type)
                      ..named = true
                      ..defaultTo = parameter.defaultValue != null
                          ? Code(parameter.defaultValue!.toSource())
                          : null;

                    // Add annotations for the parameter
                    for (final meta in innerParameter.metadata) {
                      final annotationName = meta.name.name;

                      // Check if the annotation has parentheses
                      final hasParentheses = meta.arguments != null;

                      final args = meta.arguments?.arguments;
                      final annotationCode = hasParentheses &&
                              args != null &&
                              args.isNotEmpty
                          ? '$annotationName(${args.map((arg) => arg.toSource()).join(', ')})'
                          : hasParentheses
                              ? '$annotationName()' // Annotation has empty parentheses
                              : '$annotationName'; // Annotation without parentheses

                      pb.annotations.add(CodeExpression(Code(annotationCode)));
                    }
                  }));
                }
              }
            }
          }
        }
        methodBuilders.add(mb);
      }
    }

    return methodBuilders;
  }
}
