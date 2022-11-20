import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info.freezed.dart';
part 'contact_info.g.dart';

@freezed
class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    required String companyName,
    required String person,
    required String email,
    required String city,
    required String country,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, Object?> json) =>
      _$ContactInfoFromJson(json);
}
