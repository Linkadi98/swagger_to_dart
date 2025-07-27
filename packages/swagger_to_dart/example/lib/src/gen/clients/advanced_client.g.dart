// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _AdvancedClient implements AdvancedClient {
  _AdvancedClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  Future<dynamic> _advancedSpecialUuid(String id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/special/uuid',
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
  Future<Result<dynamic>> advancedSpecialUuid(String id) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedSpecialUuid(id),
    );
  }

  Future<dynamic> _advancedSpecialEnum({required UserLevel level}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'level': level.toJson()};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/special/enum',
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
  Future<Result<dynamic>> advancedSpecialEnum({required UserLevel level}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedSpecialEnum(level: level),
    );
  }

  Future<dynamic> _advancedSpecialLiteral({required String mode}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mode': mode};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/special/literal',
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
  Future<Result<dynamic>> advancedSpecialLiteral({required String mode}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedSpecialLiteral(mode: mode),
    );
  }

  Future<dynamic> _advancedCollectionList({required List<String> items}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'items': items};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/collection/list',
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
  Future<Result<dynamic>> advancedCollectionList({
    required List<String> items,
  }) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedCollectionList(items: items),
    );
  }

  Future<dynamic> _advancedCollectionSet({required List<int> items}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'items': items};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/collection/set',
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
  Future<Result<dynamic>> advancedCollectionSet({required List<int> items}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedCollectionSet(items: items),
    );
  }

  Future<dynamic> _advancedCollectionDict() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/collection/dict',
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
  Future<Result<dynamic>> advancedCollectionDict() {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedCollectionDict(),
    );
  }

  Future<dynamic> _advancedCollectionTuple(List<dynamic> items) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'items': items};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/collection/tuple',
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
  Future<Result<dynamic>> advancedCollectionTuple(List<dynamic> items) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedCollectionTuple(items),
    );
  }

  Future<dynamic> _advancedCollectionVariableTuple(List<String> items) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'items': items};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/collection/variable_tuple',
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
  Future<Result<dynamic>> advancedCollectionVariableTuple(List<String> items) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedCollectionVariableTuple(items),
    );
  }

  Future<dynamic> _advancedUnionSimple(dynamic value) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'value': value.toJson()};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/union/simple',
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
  Future<Result<dynamic>> advancedUnionSimple(dynamic value) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedUnionSimple(value),
    );
  }

  Future<dynamic> _advancedUnionOptional({String? value}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'value': value};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/union/optional',
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
  Future<Result<dynamic>> advancedUnionOptional({String? value}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedUnionOptional(value: value),
    );
  }

  Future<dynamic> _advancedUnionModern({required dynamic value}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'value': value.toJson()};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/union/modern',
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
  Future<Result<dynamic>> advancedUnionModern({required dynamic value}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedUnionModern(value: value),
    );
  }

  Future<dynamic> _advancedCustomPositiveInt(int value, int value2) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': value,
      r'value2': value2,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/custom/positive_int',
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
  Future<Result<dynamic>> advancedCustomPositiveInt(int value, int value2) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedCustomPositiveInt(value, value2),
    );
  }

  Future<dynamic> _advancedDependsQuery({
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
            '/depends/query',
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
  Future<Result<dynamic>> advancedDependsQuery({
    String? q,
    required int skip,
    required int limit,
  }) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedDependsQuery(q: q, skip: skip, limit: limit),
    );
  }

  Future<dynamic> _advancedDependsClass({required String dbName}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'db_name': dbName};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/depends/class',
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
  Future<Result<dynamic>> advancedDependsClass({required String dbName}) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedDependsClass(dbName: dbName),
    );
  }

  Future<dynamic> _advancedErrorNotFound(int itemId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/errors/not_found/${itemId}',
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
  Future<Result<dynamic>> advancedErrorNotFound(int itemId) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedErrorNotFound(itemId),
    );
  }

  Future<dynamic> _advancedErrorCustom(int code) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'code': code};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<dynamic>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/errors/custom',
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
  Future<Result<dynamic>> advancedErrorCustom(int code) {
    return CustomApiResponseAdapter<dynamic>().adapt(
      () => _advancedErrorCustom(code),
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
