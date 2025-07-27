// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwaggerToDartYaml _$SwaggerToDartYamlFromJson(Map<String, dynamic> json) =>
    _SwaggerToDartYaml(
      swaggerToDart: SwaggerToDart.fromJson(
          json['swagger_to_dart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SwaggerToDartYamlToJson(_SwaggerToDartYaml instance) =>
    <String, dynamic>{
      'swagger_to_dart': instance.swaggerToDart.toJson(),
    };

_SwaggerToDart _$SwaggerToDartFromJson(Map<String, dynamic> json) =>
    _SwaggerToDart(
      url: json['url'] as String?,
      inputDirectory:
          json['input_directory'] as String? ?? 'schema/swagger.json',
      outputDirectory: json['output_directory'] as String? ?? 'lib/src/gen',
      apiClientClassName:
          json['api_client_class_name'] as String? ?? 'ApiClient',
      globalImports: (json['global_imports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      fileImports: (json['file_imports'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          const {},
      customApiResponse: json['custom_api_response'] == null
          ? null
          : CustomApiResponse.fromJson(
              json['custom_api_response'] as Map<String, dynamic>),
      skippedParameters: (json['skipped_parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SwaggerToDartToJson(_SwaggerToDart instance) =>
    <String, dynamic>{
      if (instance.url case final value?) 'url': value,
      'input_directory': instance.inputDirectory,
      'output_directory': instance.outputDirectory,
      'api_client_class_name': instance.apiClientClassName,
      'global_imports': instance.globalImports,
      'file_imports': instance.fileImports,
      if (instance.customApiResponse?.toJson() case final value?)
        'custom_api_response': value,
      'skipped_parameters': instance.skippedParameters,
    };

_CustomApiResponse _$CustomApiResponseFromJson(Map<String, dynamic> json) =>
    _CustomApiResponse(
      adapterClassName: json['adapter_class_name'] as String,
      returnTypeClassName: json['return_type_class_name'] as String,
      adapterImportPath: json['adapter_import_path'] as String,
      returnTypeImportPath: json['return_type_import_path'] as String,
    );

Map<String, dynamic> _$CustomApiResponseToJson(_CustomApiResponse instance) =>
    <String, dynamic>{
      'adapter_class_name': instance.adapterClassName,
      'return_type_class_name': instance.returnTypeClassName,
      'adapter_import_path': instance.adapterImportPath,
      'return_type_import_path': instance.returnTypeImportPath,
    };
