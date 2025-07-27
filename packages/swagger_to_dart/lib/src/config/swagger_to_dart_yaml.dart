import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/utils/yaml.dart';
import 'package:yaml/yaml.dart';

part 'swagger_to_dart_yaml.freezed.dart';
part 'swagger_to_dart_yaml.g.dart';

@freezed
abstract class SwaggerToDartYaml with _$SwaggerToDartYaml {
  const SwaggerToDartYaml._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SwaggerToDartYaml({required SwaggerToDart swaggerToDart}) =
      _SwaggerToDartYaml;

  factory SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  factory SwaggerToDartYaml.fromYamlMap(YamlMap yaml) {
    return SwaggerToDartYaml.fromJson(yaml.toMap());
  }

  String toYamlString() {
    return YamlMapConverter.jsonToYaml(jsonEncode(toJson()));
  }

  static const String filename = 'swagger_to_dart.yaml';
}

@freezed
abstract class SwaggerToDart with _$SwaggerToDart {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SwaggerToDart({
    String? url,
    @Default('schema/swagger.json') String inputDirectory,
    @Default('lib/src/gen') String outputDirectory,
    @Default('ApiClient') String apiClientClassName,
    @Default([]) List<String> globalImports,
    @Default({}) Map<String, List<String>> fileImports,
    @Default(null)
    CustomApiResponse? customApiResponse, // Updated to use a model
    @Default([]) List<String> skippedParameters,
  }) = _SwaggerToDart;

  factory SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);
}

@freezed
abstract class CustomApiResponse with _$CustomApiResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CustomApiResponse({
    required String adapterClassName,
    required String returnTypeClassName,
    required String adapterImportPath,
    required String returnTypeImportPath,
  }) = _CustomApiResponse;

  factory CustomApiResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomApiResponseFromJson(json);
}

extension SwaggerToDartExts on SwaggerToDart {
  bool get hasCustomApiResponse => customApiResponse != null;
}
