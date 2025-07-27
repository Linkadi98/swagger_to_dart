// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _BasicClient implements BasicClient {
  _BasicClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  Future<dynamic> _basicBasicNumber(int num) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/basic/number/${num}',
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
  Future<Result<dynamic>> basicBasicNumber(int num) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicBasicNumber(num),
    );
  }

  Future<dynamic> _basicBasicFloat(double num) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/basic/float/${num}',
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
  Future<Result<dynamic>> basicBasicFloat(double num) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicBasicFloat(num),
    );
  }

  Future<dynamic> _basicBasicBoolean({required bool flag}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'flag': flag};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/basic/boolean',
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
  Future<Result<dynamic>> basicBasicBoolean({required bool flag}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicBasicBoolean(flag: flag),
    );
  }

  Future<dynamic> _basicBasicString({required String text}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'text': text};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/basic/string',
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
  Future<Result<dynamic>> basicBasicString({required String text}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicBasicString(text: text),
    );
  }

  Future<dynamic> _basicDatetimeDate(DateTime d) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'd': d.toIso8601String()};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/datetime/date',
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
  Future<Result<dynamic>> basicDatetimeDate(DateTime d) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicDatetimeDate(d),
    );
  }

  Future<dynamic> _basicDatetimeDatetime(DateTime dt) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'dt': dt.toIso8601String()};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/datetime/datetime',
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
  Future<Result<dynamic>> basicDatetimeDatetime(DateTime dt) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicDatetimeDatetime(dt),
    );
  }

  Future<dynamic> _basicDatetimeTime(String t) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r't': t};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/datetime/time',
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
  Future<Result<dynamic>> basicDatetimeTime(String t) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicDatetimeTime(t),
    );
  }

  Future<dynamic> _basicDatetimeTimedelta(String td) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'td': td};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/datetime/timedelta',
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
  Future<Result<dynamic>> basicDatetimeTimedelta(String td) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _basicDatetimeTimedelta(td),
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
