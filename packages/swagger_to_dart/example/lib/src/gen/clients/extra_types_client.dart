import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/custom_api_response.dart';
import 'package:example/src/gen/models/models.dart';
part 'extra_types_client.g.dart';

@RestApi(callAdapter: CustomApiResponseAdapter)
abstract class ExtraTypesClient {
  factory ExtraTypesClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ExtraTypesClient;

  /// OperationId: Extra Types-create_color
  /// Summary: Create Color
  @POST('/extra_types/color/')
  Future<Result> extraTypesCreateColor();

  /// OperationId: Extra Types-process_country
  /// Summary: Process Country
  @POST('/extra_types/country/')
  Future<Result> extraTypesProcessCountry();

  /// OperationId: Extra Types-process_payment_card
  /// Summary: Process Payment Card
  @POST('/extra_types/payment/')
  Future<Result> extraTypesProcessPaymentCard();

  /// OperationId: Extra Types-process_phone
  /// Summary: Process Phone
  @POST('/extra_types/phone/')
  Future<Result> extraTypesProcessPhone();

  /// OperationId: Extra Types-process_routing
  /// Summary: Process Routing
  @POST('/extra_types/routing/')
  Future<Result> extraTypesProcessRouting();

  /// OperationId: Extra Types-process_coordinate
  /// Summary: Process Coordinate
  @POST('/extra_types/coordinate/')
  Future<Result> extraTypesProcessCoordinate();

  /// OperationId: Extra Types-process_mac
  /// Summary: Process Mac
  @POST('/extra_types/mac/')
  Future<Result> extraTypesProcessMac();

  /// OperationId: Extra Types-process_isbn
  /// Summary: Process Isbn
  @POST('/extra_types/isbn/')
  Future<Result> extraTypesProcessIsbn();

  /// OperationId: Extra Types-process_currency
  /// Summary: Process Currency
  @POST('/extra_types/currency/')
  Future<Result> extraTypesProcessCurrency();

  /// OperationId: Extra Types-process_domain
  /// Summary: Process Domain
  @POST('/extra_types/domain/')
  Future<Result> extraTypesProcessDomain();

  /// OperationId: Extra Types-process_language
  /// Summary: Process Language
  @POST('/extra_types/language/')
  Future<Result> extraTypesProcessLanguage();

  /// OperationId: Extra Types-process_script
  /// Summary: Process Script
  @POST('/extra_types/script/')
  Future<Result> extraTypesProcessScript();

  /// OperationId: Extra Types-process_version
  /// Summary: Process Version
  @POST('/extra_types/version/')
  Future<Result> extraTypesProcessVersion();

  /// OperationId: Extra Types-process_s3_path
  /// Summary: Process S3 Path
  @POST('/extra_types/s3/')
  Future<Result> extraTypesProcessS3Path();

  /// OperationId: Extra Types-process_timezone
  /// Summary: Process Timezone
  @POST('/extra_types/timezone/')
  Future<Result> extraTypesProcessTimezone();

  /// OperationId: Extra Types-process_ulid
  /// Summary: Process Ulid
  @POST('/extra_types/ulid/')
  Future<Result> extraTypesProcessUlid();
}
