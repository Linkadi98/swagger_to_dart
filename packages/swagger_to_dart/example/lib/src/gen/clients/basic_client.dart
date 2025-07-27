import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/custom_api_response.dart';
import 'package:example/src/gen/models/models.dart';
part 'basic_client.g.dart';

@RestApi(callAdapter: CustomApiResponseAdapter)
abstract class BasicClient {
  factory BasicClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BasicClient;

  /// OperationId: basic-basic_number
  /// Summary: Handle integer path parameter
  /// Description: Handle integer path parameter.
  @GET('/basic/number/{num}')
  Future<Result> basicBasicNumber(@Path('num') int num);

  /// OperationId: basic-basic_float
  /// Summary: Handle float path parameter
  /// Description: Handle float path parameter.
  @GET('/basic/float/{num}')
  Future<Result> basicBasicFloat(@Path('num') double num);

  /// OperationId: basic-basic_boolean
  /// Summary: Handle boolean query parameter
  /// Description: Handle boolean query parameter with default value.
  @GET('/basic/boolean')
  Future<Result> basicBasicBoolean({@Query('flag') required bool flag});

  /// OperationId: basic-basic_string
  /// Summary: Handle string query parameter
  /// Description: Handle string query parameter with validation.
  @GET('/basic/string')
  Future<Result> basicBasicString({@Query('text') required String text});

  /// OperationId: basic-datetime_date
  /// Summary: Handle date parameters
  /// Description: Handle date parameter (YYYY-MM-DD).
  @GET('/datetime/date')
  Future<Result> basicDatetimeDate(@Query('d') DateTime d);

  /// OperationId: basic-datetime_datetime
  /// Summary: Handle datetime parameters
  /// Description: Handle datetime parameter (YYYY-MM-DDThh:mm:ss).
  @GET('/datetime/datetime')
  Future<Result> basicDatetimeDatetime(@Query('dt') DateTime dt);

  /// OperationId: basic-datetime_time
  /// Summary: Handle time parameters
  /// Description: Handle time parameter (hh:mm:ss).
  @GET('/datetime/time')
  Future<Result> basicDatetimeTime(@Query('t') String t);

  /// OperationId: basic-datetime_timedelta
  /// Summary: Handle timedelta parameters
  /// Description: Handle timedelta parameter (in seconds).
  @GET('/datetime/timedelta')
  Future<Result> basicDatetimeTimedelta(@Query('td') String td);
}
