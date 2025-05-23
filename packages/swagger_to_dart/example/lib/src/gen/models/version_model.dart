import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "version_model.freezed.dart";
part "version_model.g.dart";

/// VersionModel
@freezed
abstract class VersionModel with _$VersionModel {
  const VersionModel._();

  static const String versionKey = "version";

  @JsonSerializable(converters: convertors)
  const factory VersionModel({
    /// version
    @JsonKey(name: VersionModel.versionKey) required String version,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);
}
