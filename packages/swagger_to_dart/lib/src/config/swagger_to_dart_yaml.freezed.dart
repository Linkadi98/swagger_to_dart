// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwaggerToDartYaml {
  SwaggerToDart get swaggerToDart;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SwaggerToDartYamlCopyWith<SwaggerToDartYaml> get copyWith =>
      _$SwaggerToDartYamlCopyWithImpl<SwaggerToDartYaml>(
          this as SwaggerToDartYaml, _$identity);

  /// Serializes this SwaggerToDartYaml to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwaggerToDartYaml &&
            (identical(other.swaggerToDart, swaggerToDart) ||
                other.swaggerToDart == swaggerToDart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, swaggerToDart);

  @override
  String toString() {
    return 'SwaggerToDartYaml(swaggerToDart: $swaggerToDart)';
  }
}

/// @nodoc
abstract mixin class $SwaggerToDartYamlCopyWith<$Res> {
  factory $SwaggerToDartYamlCopyWith(
          SwaggerToDartYaml value, $Res Function(SwaggerToDartYaml) _then) =
      _$SwaggerToDartYamlCopyWithImpl;
  @useResult
  $Res call({SwaggerToDart swaggerToDart});

  $SwaggerToDartCopyWith<$Res> get swaggerToDart;
}

/// @nodoc
class _$SwaggerToDartYamlCopyWithImpl<$Res>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  _$SwaggerToDartYamlCopyWithImpl(this._self, this._then);

  final SwaggerToDartYaml _self;
  final $Res Function(SwaggerToDartYaml) _then;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swaggerToDart = null,
  }) {
    return _then(_self.copyWith(
      swaggerToDart: null == swaggerToDart
          ? _self.swaggerToDart
          : swaggerToDart // ignore: cast_nullable_to_non_nullable
              as SwaggerToDart,
    ));
  }

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwaggerToDartCopyWith<$Res> get swaggerToDart {
    return $SwaggerToDartCopyWith<$Res>(_self.swaggerToDart, (value) {
      return _then(_self.copyWith(swaggerToDart: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SwaggerToDartYaml extends SwaggerToDartYaml {
  const _SwaggerToDartYaml({required this.swaggerToDart}) : super._();
  factory _SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  @override
  final SwaggerToDart swaggerToDart;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SwaggerToDartYamlCopyWith<_SwaggerToDartYaml> get copyWith =>
      __$SwaggerToDartYamlCopyWithImpl<_SwaggerToDartYaml>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SwaggerToDartYamlToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwaggerToDartYaml &&
            (identical(other.swaggerToDart, swaggerToDart) ||
                other.swaggerToDart == swaggerToDart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, swaggerToDart);

  @override
  String toString() {
    return 'SwaggerToDartYaml(swaggerToDart: $swaggerToDart)';
  }
}

/// @nodoc
abstract mixin class _$SwaggerToDartYamlCopyWith<$Res>
    implements $SwaggerToDartYamlCopyWith<$Res> {
  factory _$SwaggerToDartYamlCopyWith(
          _SwaggerToDartYaml value, $Res Function(_SwaggerToDartYaml) _then) =
      __$SwaggerToDartYamlCopyWithImpl;
  @override
  @useResult
  $Res call({SwaggerToDart swaggerToDart});

  @override
  $SwaggerToDartCopyWith<$Res> get swaggerToDart;
}

/// @nodoc
class __$SwaggerToDartYamlCopyWithImpl<$Res>
    implements _$SwaggerToDartYamlCopyWith<$Res> {
  __$SwaggerToDartYamlCopyWithImpl(this._self, this._then);

  final _SwaggerToDartYaml _self;
  final $Res Function(_SwaggerToDartYaml) _then;

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? swaggerToDart = null,
  }) {
    return _then(_SwaggerToDartYaml(
      swaggerToDart: null == swaggerToDart
          ? _self.swaggerToDart
          : swaggerToDart // ignore: cast_nullable_to_non_nullable
              as SwaggerToDart,
    ));
  }

  /// Create a copy of SwaggerToDartYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwaggerToDartCopyWith<$Res> get swaggerToDart {
    return $SwaggerToDartCopyWith<$Res>(_self.swaggerToDart, (value) {
      return _then(_self.copyWith(swaggerToDart: value));
    });
  }
}

/// @nodoc
mixin _$SwaggerToDart {
  String? get url;
  String get inputDirectory;
  String get outputDirectory;
  String get apiClientClassName;
  List<String> get globalImports;
  Map<String, List<String>> get fileImports;
  CustomApiResponse? get customApiResponse; // Updated to use a model
  List<String> get skippedParameters;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SwaggerToDartCopyWith<SwaggerToDart> get copyWith =>
      _$SwaggerToDartCopyWithImpl<SwaggerToDart>(
          this as SwaggerToDart, _$identity);

  /// Serializes this SwaggerToDart to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwaggerToDart &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality()
                .equals(other.globalImports, globalImports) &&
            const DeepCollectionEquality()
                .equals(other.fileImports, fileImports) &&
            (identical(other.customApiResponse, customApiResponse) ||
                other.customApiResponse == customApiResponse) &&
            const DeepCollectionEquality()
                .equals(other.skippedParameters, skippedParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      inputDirectory,
      outputDirectory,
      apiClientClassName,
      const DeepCollectionEquality().hash(globalImports),
      const DeepCollectionEquality().hash(fileImports),
      customApiResponse,
      const DeepCollectionEquality().hash(skippedParameters));

  @override
  String toString() {
    return 'SwaggerToDart(url: $url, inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, globalImports: $globalImports, fileImports: $fileImports, customApiResponse: $customApiResponse, skippedParameters: $skippedParameters)';
  }
}

/// @nodoc
abstract mixin class $SwaggerToDartCopyWith<$Res> {
  factory $SwaggerToDartCopyWith(
          SwaggerToDart value, $Res Function(SwaggerToDart) _then) =
      _$SwaggerToDartCopyWithImpl;
  @useResult
  $Res call(
      {String? url,
      String inputDirectory,
      String outputDirectory,
      String apiClientClassName,
      List<String> globalImports,
      Map<String, List<String>> fileImports,
      CustomApiResponse? customApiResponse,
      List<String> skippedParameters});

  $CustomApiResponseCopyWith<$Res>? get customApiResponse;
}

/// @nodoc
class _$SwaggerToDartCopyWithImpl<$Res>
    implements $SwaggerToDartCopyWith<$Res> {
  _$SwaggerToDartCopyWithImpl(this._self, this._then);

  final SwaggerToDart _self;
  final $Res Function(SwaggerToDart) _then;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? globalImports = null,
    Object? fileImports = null,
    Object? customApiResponse = freezed,
    Object? skippedParameters = null,
  }) {
    return _then(_self.copyWith(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDirectory: null == inputDirectory
          ? _self.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _self.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      apiClientClassName: null == apiClientClassName
          ? _self.apiClientClassName
          : apiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      globalImports: null == globalImports
          ? _self.globalImports
          : globalImports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fileImports: null == fileImports
          ? _self.fileImports
          : fileImports // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      customApiResponse: freezed == customApiResponse
          ? _self.customApiResponse
          : customApiResponse // ignore: cast_nullable_to_non_nullable
              as CustomApiResponse?,
      skippedParameters: null == skippedParameters
          ? _self.skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomApiResponseCopyWith<$Res>? get customApiResponse {
    if (_self.customApiResponse == null) {
      return null;
    }

    return $CustomApiResponseCopyWith<$Res>(_self.customApiResponse!, (value) {
      return _then(_self.copyWith(customApiResponse: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SwaggerToDart implements SwaggerToDart {
  _SwaggerToDart(
      {this.url,
      this.inputDirectory = 'schema/swagger.json',
      this.outputDirectory = 'lib/src/gen',
      this.apiClientClassName = 'ApiClient',
      final List<String> globalImports = const [],
      final Map<String, List<String>> fileImports = const {},
      this.customApiResponse = null,
      final List<String> skippedParameters = const []})
      : _globalImports = globalImports,
        _fileImports = fileImports,
        _skippedParameters = skippedParameters;
  factory _SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);

  @override
  final String? url;
  @override
  @JsonKey()
  final String inputDirectory;
  @override
  @JsonKey()
  final String outputDirectory;
  @override
  @JsonKey()
  final String apiClientClassName;
  final List<String> _globalImports;
  @override
  @JsonKey()
  List<String> get globalImports {
    if (_globalImports is EqualUnmodifiableListView) return _globalImports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_globalImports);
  }

  final Map<String, List<String>> _fileImports;
  @override
  @JsonKey()
  Map<String, List<String>> get fileImports {
    if (_fileImports is EqualUnmodifiableMapView) return _fileImports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fileImports);
  }

  @override
  @JsonKey()
  final CustomApiResponse? customApiResponse;
// Updated to use a model
  final List<String> _skippedParameters;
// Updated to use a model
  @override
  @JsonKey()
  List<String> get skippedParameters {
    if (_skippedParameters is EqualUnmodifiableListView)
      return _skippedParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skippedParameters);
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SwaggerToDartCopyWith<_SwaggerToDart> get copyWith =>
      __$SwaggerToDartCopyWithImpl<_SwaggerToDart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SwaggerToDartToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwaggerToDart &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.inputDirectory, inputDirectory) ||
                other.inputDirectory == inputDirectory) &&
            (identical(other.outputDirectory, outputDirectory) ||
                other.outputDirectory == outputDirectory) &&
            (identical(other.apiClientClassName, apiClientClassName) ||
                other.apiClientClassName == apiClientClassName) &&
            const DeepCollectionEquality()
                .equals(other._globalImports, _globalImports) &&
            const DeepCollectionEquality()
                .equals(other._fileImports, _fileImports) &&
            (identical(other.customApiResponse, customApiResponse) ||
                other.customApiResponse == customApiResponse) &&
            const DeepCollectionEquality()
                .equals(other._skippedParameters, _skippedParameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      inputDirectory,
      outputDirectory,
      apiClientClassName,
      const DeepCollectionEquality().hash(_globalImports),
      const DeepCollectionEquality().hash(_fileImports),
      customApiResponse,
      const DeepCollectionEquality().hash(_skippedParameters));

  @override
  String toString() {
    return 'SwaggerToDart(url: $url, inputDirectory: $inputDirectory, outputDirectory: $outputDirectory, apiClientClassName: $apiClientClassName, globalImports: $globalImports, fileImports: $fileImports, customApiResponse: $customApiResponse, skippedParameters: $skippedParameters)';
  }
}

/// @nodoc
abstract mixin class _$SwaggerToDartCopyWith<$Res>
    implements $SwaggerToDartCopyWith<$Res> {
  factory _$SwaggerToDartCopyWith(
          _SwaggerToDart value, $Res Function(_SwaggerToDart) _then) =
      __$SwaggerToDartCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? url,
      String inputDirectory,
      String outputDirectory,
      String apiClientClassName,
      List<String> globalImports,
      Map<String, List<String>> fileImports,
      CustomApiResponse? customApiResponse,
      List<String> skippedParameters});

  @override
  $CustomApiResponseCopyWith<$Res>? get customApiResponse;
}

/// @nodoc
class __$SwaggerToDartCopyWithImpl<$Res>
    implements _$SwaggerToDartCopyWith<$Res> {
  __$SwaggerToDartCopyWithImpl(this._self, this._then);

  final _SwaggerToDart _self;
  final $Res Function(_SwaggerToDart) _then;

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
    Object? inputDirectory = null,
    Object? outputDirectory = null,
    Object? apiClientClassName = null,
    Object? globalImports = null,
    Object? fileImports = null,
    Object? customApiResponse = freezed,
    Object? skippedParameters = null,
  }) {
    return _then(_SwaggerToDart(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      inputDirectory: null == inputDirectory
          ? _self.inputDirectory
          : inputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      outputDirectory: null == outputDirectory
          ? _self.outputDirectory
          : outputDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      apiClientClassName: null == apiClientClassName
          ? _self.apiClientClassName
          : apiClientClassName // ignore: cast_nullable_to_non_nullable
              as String,
      globalImports: null == globalImports
          ? _self._globalImports
          : globalImports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fileImports: null == fileImports
          ? _self._fileImports
          : fileImports // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      customApiResponse: freezed == customApiResponse
          ? _self.customApiResponse
          : customApiResponse // ignore: cast_nullable_to_non_nullable
              as CustomApiResponse?,
      skippedParameters: null == skippedParameters
          ? _self._skippedParameters
          : skippedParameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of SwaggerToDart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomApiResponseCopyWith<$Res>? get customApiResponse {
    if (_self.customApiResponse == null) {
      return null;
    }

    return $CustomApiResponseCopyWith<$Res>(_self.customApiResponse!, (value) {
      return _then(_self.copyWith(customApiResponse: value));
    });
  }
}

/// @nodoc
mixin _$CustomApiResponse {
  String get adapterClassName;
  String get returnTypeClassName;
  String get adapterImportPath;
  String get returnTypeImportPath;

  /// Create a copy of CustomApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomApiResponseCopyWith<CustomApiResponse> get copyWith =>
      _$CustomApiResponseCopyWithImpl<CustomApiResponse>(
          this as CustomApiResponse, _$identity);

  /// Serializes this CustomApiResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomApiResponse &&
            (identical(other.adapterClassName, adapterClassName) ||
                other.adapterClassName == adapterClassName) &&
            (identical(other.returnTypeClassName, returnTypeClassName) ||
                other.returnTypeClassName == returnTypeClassName) &&
            (identical(other.adapterImportPath, adapterImportPath) ||
                other.adapterImportPath == adapterImportPath) &&
            (identical(other.returnTypeImportPath, returnTypeImportPath) ||
                other.returnTypeImportPath == returnTypeImportPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adapterClassName,
      returnTypeClassName, adapterImportPath, returnTypeImportPath);

  @override
  String toString() {
    return 'CustomApiResponse(adapterClassName: $adapterClassName, returnTypeClassName: $returnTypeClassName, adapterImportPath: $adapterImportPath, returnTypeImportPath: $returnTypeImportPath)';
  }
}

/// @nodoc
abstract mixin class $CustomApiResponseCopyWith<$Res> {
  factory $CustomApiResponseCopyWith(
          CustomApiResponse value, $Res Function(CustomApiResponse) _then) =
      _$CustomApiResponseCopyWithImpl;
  @useResult
  $Res call(
      {String adapterClassName,
      String returnTypeClassName,
      String adapterImportPath,
      String returnTypeImportPath});
}

/// @nodoc
class _$CustomApiResponseCopyWithImpl<$Res>
    implements $CustomApiResponseCopyWith<$Res> {
  _$CustomApiResponseCopyWithImpl(this._self, this._then);

  final CustomApiResponse _self;
  final $Res Function(CustomApiResponse) _then;

  /// Create a copy of CustomApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adapterClassName = null,
    Object? returnTypeClassName = null,
    Object? adapterImportPath = null,
    Object? returnTypeImportPath = null,
  }) {
    return _then(_self.copyWith(
      adapterClassName: null == adapterClassName
          ? _self.adapterClassName
          : adapterClassName // ignore: cast_nullable_to_non_nullable
              as String,
      returnTypeClassName: null == returnTypeClassName
          ? _self.returnTypeClassName
          : returnTypeClassName // ignore: cast_nullable_to_non_nullable
              as String,
      adapterImportPath: null == adapterImportPath
          ? _self.adapterImportPath
          : adapterImportPath // ignore: cast_nullable_to_non_nullable
              as String,
      returnTypeImportPath: null == returnTypeImportPath
          ? _self.returnTypeImportPath
          : returnTypeImportPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CustomApiResponse implements CustomApiResponse {
  _CustomApiResponse(
      {required this.adapterClassName,
      required this.returnTypeClassName,
      required this.adapterImportPath,
      required this.returnTypeImportPath});
  factory _CustomApiResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomApiResponseFromJson(json);

  @override
  final String adapterClassName;
  @override
  final String returnTypeClassName;
  @override
  final String adapterImportPath;
  @override
  final String returnTypeImportPath;

  /// Create a copy of CustomApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomApiResponseCopyWith<_CustomApiResponse> get copyWith =>
      __$CustomApiResponseCopyWithImpl<_CustomApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomApiResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomApiResponse &&
            (identical(other.adapterClassName, adapterClassName) ||
                other.adapterClassName == adapterClassName) &&
            (identical(other.returnTypeClassName, returnTypeClassName) ||
                other.returnTypeClassName == returnTypeClassName) &&
            (identical(other.adapterImportPath, adapterImportPath) ||
                other.adapterImportPath == adapterImportPath) &&
            (identical(other.returnTypeImportPath, returnTypeImportPath) ||
                other.returnTypeImportPath == returnTypeImportPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adapterClassName,
      returnTypeClassName, adapterImportPath, returnTypeImportPath);

  @override
  String toString() {
    return 'CustomApiResponse(adapterClassName: $adapterClassName, returnTypeClassName: $returnTypeClassName, adapterImportPath: $adapterImportPath, returnTypeImportPath: $returnTypeImportPath)';
  }
}

/// @nodoc
abstract mixin class _$CustomApiResponseCopyWith<$Res>
    implements $CustomApiResponseCopyWith<$Res> {
  factory _$CustomApiResponseCopyWith(
          _CustomApiResponse value, $Res Function(_CustomApiResponse) _then) =
      __$CustomApiResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String adapterClassName,
      String returnTypeClassName,
      String adapterImportPath,
      String returnTypeImportPath});
}

/// @nodoc
class __$CustomApiResponseCopyWithImpl<$Res>
    implements _$CustomApiResponseCopyWith<$Res> {
  __$CustomApiResponseCopyWithImpl(this._self, this._then);

  final _CustomApiResponse _self;
  final $Res Function(_CustomApiResponse) _then;

  /// Create a copy of CustomApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adapterClassName = null,
    Object? returnTypeClassName = null,
    Object? adapterImportPath = null,
    Object? returnTypeImportPath = null,
  }) {
    return _then(_CustomApiResponse(
      adapterClassName: null == adapterClassName
          ? _self.adapterClassName
          : adapterClassName // ignore: cast_nullable_to_non_nullable
              as String,
      returnTypeClassName: null == returnTypeClassName
          ? _self.returnTypeClassName
          : returnTypeClassName // ignore: cast_nullable_to_non_nullable
              as String,
      adapterImportPath: null == adapterImportPath
          ? _self.adapterImportPath
          : adapterImportPath // ignore: cast_nullable_to_non_nullable
              as String,
      returnTypeImportPath: null == returnTypeImportPath
          ? _self.returnTypeImportPath
          : returnTypeImportPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
