// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _ValidationClient implements ValidationClient {
  _ValidationClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  Future<dynamic> _validationParamPath(int itemId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/path/${itemId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationParamPath(int itemId) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationParamPath(itemId),
    );
  }

  Future<dynamic> _validationParamQuery({
    String? q,
    required int skip,
    required int limit,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': q,
      r'skip': skip,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/query',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationParamQuery({
    String? q,
    required int skip,
    required int limit,
  }) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationParamQuery(q: q, skip: skip, limit: limit),
    );
  }

  Future<dynamic> _validationParamBody() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/body',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationParamBody() {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationParamBody(),
    );
  }

  Future<dynamic> _validationParamCookie({
    String? session,
    String? preferences,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Cookie': preferences};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/cookie',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationParamCookie({
    String? session,
    String? preferences,
  }) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationParamCookie(session: session, preferences: preferences),
    );
  }

  Future<dynamic> _validationParamHeader(
    String userAgent, {
    String? xToken,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'user-agent': userAgent,
      r'x-token': xToken,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/header',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationParamHeader(
    String userAgent, {
    String? xToken,
  }) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationParamHeader(userAgent, xToken: xToken),
    );
  }

  Future<AllTypesWithValidation> _validationValidationComplex() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<AllTypesWithValidation>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/validation/complex',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late AllTypesWithValidation _value;
    try {
      _value = AllTypesWithValidation.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<AllTypesWithValidation>> validationValidationComplex() {
    return CustomApiResponseAdapter<AllTypesWithValidation>().adapt(
      () => _validationValidationComplex(),
    );
  }

  Future<dynamic> _validationValidationConditional({
    int? userId,
    String? username,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'user_id': userId,
      r'username': username,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/validation/conditional',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationValidationConditional({
    int? userId,
    String? username,
  }) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () =>
          _validationValidationConditional(userId: userId, username: username),
    );
  }

  Future<ConditionalBody> _validationValidationConditionalBody() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<ConditionalBody>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/validation/conditional_body',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConditionalBody _value;
    try {
      _value = ConditionalBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<ConditionalBody>> validationValidationConditionalBody() {
    return CustomApiResponseAdapter<ConditionalBody>().adapt(
      () => _validationValidationConditionalBody(),
    );
  }

  Future<dynamic> _validationConstrainedInt(int value) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'value': value};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/constrained/int',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationConstrainedInt(int value) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationConstrainedInt(value),
    );
  }

  Future<dynamic> _validationConstrainedFloat(double value) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'value': value};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/constrained/float',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationConstrainedFloat(double value) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationConstrainedFloat(value),
    );
  }

  Future<dynamic> _validationConstrainedString(String value) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'value': value};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/constrained/string',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    return _value;
  }

  @override
  Future<Result<dynamic>> validationConstrainedString(String value) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _validationConstrainedString(value),
    );
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
