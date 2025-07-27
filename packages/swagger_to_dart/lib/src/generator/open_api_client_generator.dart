import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

String commentLine(String line) {
  return '''/// ${line.split('\n').join('\n/// ')}''';
}

class OpenApiClientGenerator {
  const OpenApiClientGenerator(
      {required this.config, this.methodBuilders = const []});

  final ConfigComponents config;
  final List<MethodBuilder> methodBuilders;

  ({String filename, String content}) generator({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
    required OpenApiComponents? components,
  }) {
    final library = LibraryBuilder();

    // Add imports
    library.directives.addAll([
      Directive.import('package:dio/dio.dart'),
      Directive.import('package:retrofit/retrofit.dart'),
      ...config.baseConfig.swaggerToDart.globalImports.map(Directive.import),
      if (config.baseConfig.swaggerToDart.hasCustomApiResponse)
        Directive.import(
          config
              .baseConfig.swaggerToDart.customApiResponse!.returnTypeImportPath,
        ),
      ...config.importConfig.importModelsCode
          .map((importPath) => Directive.import(importPath)),
    ]);

    final fileName = '${config.namingUtils.renameFile(clientName)}_client';
    library.directives.add(Directive.part('$fileName.g.dart'));

    // Define the class
    final className = '${config.namingUtils.renameClass(clientName)}Client';
    final clientClass = ClassBuilder()
      ..name = className
      ..abstract = true
      ..constructors.add(Constructor((b) {
        b.factory = true;
        b.redirect = refer('_$className');
        b.requiredParameters.add(Parameter((p) => p
          ..name = 'dio'
          ..type = refer('Dio')));
        b.optionalParameters.add(Parameter((p) => p
          ..named = true
          ..name = 'baseUrl'
          ..type = refer('String?')));
        b.optionalParameters.add(Parameter((p) => p
          ..named = true
          ..name = 'errorLogger'
          ..type = refer('ParseErrorLogger?')));
      }));

    if (config.baseConfig.swaggerToDart.hasCustomApiResponse) {
      final customApiResponseConfig =
          config.baseConfig.swaggerToDart.customApiResponse!;

      clientClass.annotations.add(CodeExpression(Code(
          'RestApi(callAdapter: ${customApiResponseConfig.adapterClassName})')));
    } else {
      clientClass.annotations.add(CodeExpression(Code('RestApi()')));
    }

    // Generate methods
    for (final tagPath in tagPaths) {
      final method = path[tagPath]!;

      for (final entry in method.methods.entries) {
        final methodType = entry.key;
        final OpenApiPathMethod method = entry.value;

        // Method name
        final methodName = config.namingUtils.renameMethod(
          method.operationId ?? "${methodType}_${tagPath.replaceAll('/', '_')}",
        );

        final replacementMethodBuilder =
            methodBuilders.firstWhereOrNull((element) {
          var replaceForAnnotation = element.annotations
              .build()
              .where((a) => a is Reference)
              .firstOrNull as Reference?;

          var replaceForAnnotationSymbol = replaceForAnnotation?.symbol;

          return replaceForAnnotationSymbol?.contains('ReplaceFor') == true &&
              replaceForAnnotationSymbol?.contains('$methodName') == true &&
              replaceForAnnotationSymbol?.contains('${clientClass.name}') ==
                  true;
        });

        final hasReplacementMethodBuilder = replacementMethodBuilder != null;

        // Define the method
        final methodBuilder = replacementMethodBuilder ??
            (MethodBuilder()
              ..name = methodName
              ..returns = _getReturnType(method.responses, methodName));

        // Add comments
        if (method.operationId != null) {
          methodBuilder.docs.add('/// OperationId: ${method.operationId}');
        }
        if (method.summary != null) {
          methodBuilder.docs.add('/// Summary: ${method.summary}');
        }
        if (method.description != null) {
          methodBuilder.docs.add('/// Description: ${method.description}');
        }

        // Add annotations
        if (method.deprecated == true) {
          methodBuilder.annotations.add(CodeExpression(Code('deprecated')));
        }

        if (hasReplacementMethodBuilder) {
          if (methodBuilder.annotations.isNotEmpty) {
            methodBuilder.annotations.removeAt(0);
          }
          clientClass.methods.add(methodBuilder.build());
          continue;
        }

        methodBuilder.annotations.add(CodeExpression(
          Code('${methodType.toUpperCase()}(\'$tagPath\')'),
        ));

        // Add parameters
        final parameters = method.parameters ?? [];
        for (final param in parameters) {
          final paramName = config.namingUtils.renameProperty(param.name);
          final paramType =
              _getDartType(param.schema, methodName, isNullable: true);
          final annotation = _getParameterAnnotation(param);
          final schema = param.schema;

          if (schema is OpenApiSchemaRef) {
            final refClassName = config.namingUtils.renameRefClass(schema);
            final refClass = components?.schemas[refClassName];
            final objectProperties = refClass?.properties ?? {};
            for (final entry in objectProperties.entries) {
              final propertyName = config.namingUtils.renameProperty(entry.key);
              final propertyType =
                  _getDartType(entry.value, methodName, isNullable: true);

              methodBuilder.optionalParameters.add(Parameter((p) => p
                ..name = propertyName
                ..type = refer(propertyType!)
                ..named = true
                ..annotations
                    .add(CodeExpression(Code('Query(\'$propertyName\')')))));
            }
          } else {
            // Xử lý các tham số thông thường
            if (param.required_ == true) {
              methodBuilder.requiredParameters.add(Parameter((p) => p
                ..name = paramName
                ..type = refer(paramType!)
                ..named = true
                ..annotations.add(CodeExpression(Code(annotation)))));
            } else {
              methodBuilder.optionalParameters.add(Parameter((p) => p
                ..name = paramName
                ..type = refer(paramType!)
                ..named = true
                ..annotations.add(CodeExpression(Code(annotation)))));
            }
          }
        }

        // Handle requestBody
        if (method.requestBody != null) {
          final requestBody = method.requestBody!;
          final content = requestBody.content.current.value;

          if (content != null) {
            final bodyType = _getDartType(content.schema, methodName);
            methodBuilder.requiredParameters.add(Parameter((p) => p
              ..name = 'body'
              ..type = refer(bodyType!)
              ..named = true
              ..annotations.add(CodeExpression(Code('Body()')))));
          }
        }

        // Add the method to the class
        clientClass.methods.add(methodBuilder.build());
      }
    }

    library.body.add(clientClass.build());

    // Generate the Dart code
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final generatedCode = library.build().accept(emitter).toString();

    return (filename: fileName, content: generatedCode);
  }

  String _getParameterAnnotation(OpenApiPathMethodParameter param) {
    switch (param.in_) {
      case OpenApiPathMethodParameterType.query:
        return 'Query(\'${param.name}\')';
      case OpenApiPathMethodParameterType.path:
        return 'Path(\'${param.name}\')';
      case OpenApiPathMethodParameterType.header:
        return 'Header(\'${param.name}\')';
      case OpenApiPathMethodParameterType.cookie:
        return 'Header(\'Cookie\')';
    }
  }

  Reference _getReturnType(
      Map<String, OpenApiPathMethodResponse>? responses, String methodName) {
    final customApiResponseConfig =
        config.baseConfig.swaggerToDart.customApiResponse;
    final successResponse = responses?['200'];
    final responseType = _getDartType(
        successResponse?.content?.current.value?.schema, methodName);

    final responseClassName = customApiResponseConfig == null
        ? 'HttpResponse'
        : customApiResponseConfig.returnTypeClassName;

    if (responseType == null ||
        responseType == 'dynamic' ||
        responseType == 'Map<String, dynamic>') {
      return refer('Future<$responseClassName>');
    } else if (responseType == 'List<Map<String, dynamic>>') {
      return refer('Future<$responseClassName<List<MapItem>>>');
    } else {
      return refer('Future<$responseClassName<$responseType>>');
    }
  }

  String? _getDartType(OpenApiSchema? model, String className,
      {bool isNullable = false}) {
    if (model == null) return null;

    final dartType = switch (model) {
      OpenApiSchemaType value => config.dartTypeConverter.dartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
            OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                value,
                config.dartTypeConverter,
              ),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
          value,
          config.dartTypeConverter,
        ),
      OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
          '${className}Union${value.title ?? 'Model'}',
          value,
          config.dartTypeConverter,
        ),
    };

    return isNullable ? '$dartType?' : dartType;
  }
}
