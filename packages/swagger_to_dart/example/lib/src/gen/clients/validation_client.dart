import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/custom_api_response.dart';
import 'package:example/src/gen/models/models.dart';
part 'validation_client.g.dart';

@RestApi(callAdapter: CustomApiResponseAdapter)
abstract class ValidationClient {
  factory ValidationClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ValidationClient;

  /// OperationId: validation-param_path
  /// Summary: Demonstrate path parameter validation
  /// Description: Path parameter with validation.
  @GET('/params/path/{item_id}')
  Future<Result> validationParamPath(@Path('item_id') int itemId);

  /// OperationId: validation-param_query
  /// Summary: Demonstrate query parameter validation
  /// Description: Query parameters with validation.
  @GET('/params/query')
  Future<Result> validationParamQuery({
    @Query('q') required String? q,
    @Query('skip') required int skip,
    @Query('limit') required int limit,
  });

  /// OperationId: validation-param_body
  /// Summary: Demonstrate body parameter validation
  /// Description: Body parameters with validation.
  @POST('/params/body')
  Future<Result> validationParamBody();

  /// OperationId: validation-param_cookie
  /// Summary: Param Cookie
  /// Description: Cookie parameters.
  @GET('/params/cookie')
  Future<Result> validationParamCookie({
    @Header('Cookie') required String? session,
    @Header('Cookie') required String? preferences,
  });

  /// OperationId: validation-param_header
  /// Summary: Param Header
  /// Description: Header parameters.
  @GET('/params/header')
  Future<Result> validationParamHeader(
    @Header('user-agent') String userAgent, {
    @Header('x-token') required String? xToken,
  });

  /// OperationId: validation-validation_complex
  /// Summary: Demonstrate complex model validation
  /// Description: Process a model with complex validation rules.
  @POST('/validation/complex')
  Future<Result<AllTypesWithValidation>> validationValidationComplex();

  /// OperationId: validation-validation_conditional
  /// Summary: Demonstrate conditional validation
  /// Description: Validate that at least one parameter is provided.
  @GET('/validation/conditional')
  Future<Result> validationValidationConditional({
    @Query('user_id') required int? userId,
    @Query('username') required String? username,
  });

  /// OperationId: validation-validation_conditional_body
  /// Summary: Validate a model with conditional requirements
  /// Description: Validate a body with conditional validation.
  @POST('/validation/conditional_body')
  Future<Result<ConditionalBody>> validationValidationConditionalBody();

  /// OperationId: validation-constrained_int
  /// Summary: Demonstrate constrained integer validation
  /// Description: Handle constrained integer with validation.
  @GET('/constrained/int')
  Future<Result> validationConstrainedInt(@Query('value') int value);

  /// OperationId: validation-constrained_float
  /// Summary: Demonstrate constrained float validation
  /// Description: Handle constrained float with validation.
  @GET('/constrained/float')
  Future<Result> validationConstrainedFloat(@Query('value') double value);

  /// OperationId: validation-constrained_string
  /// Summary: Demonstrate constrained string validation
  /// Description: Handle constrained string with validation.
  @GET('/constrained/string')
  Future<Result> validationConstrainedString(@Query('value') String value);
}
