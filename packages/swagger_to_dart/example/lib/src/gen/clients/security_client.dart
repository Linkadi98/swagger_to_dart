import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/custom_api_response.dart';
import 'package:example/src/gen/models/models.dart';
part 'security_client.g.dart';

@RestApi(callAdapter: CustomApiResponseAdapter)
abstract class SecurityClient {
  factory SecurityClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _SecurityClient;

  /// OperationId: security-login
  /// Summary: Get an access token
  /// Description: OAuth2 compatible token login, get an access token for future requests.
  @POST('/token')
  Future<Result> securityLogin();

  /// OperationId: security-read_users_me
  /// Summary: Get current user from token
  /// Description: Get current user based on the token.
  @GET('/users/me')
  Future<Result> securityReadUsersMe();

  /// OperationId: security-get_secure_items
  /// Summary: Get items using API key auth
  /// Description: Get items using API key auth.
  @GET('/items/secure')
  Future<Result<List<MapItem>>> securityGetSecureItems();
}
