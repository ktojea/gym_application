import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_application/data/models/local/user_info/user_info.dart';

part 'user_profile_response.freezed.dart';
part 'user_profile_response.g.dart';

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const UserProfileResponse._();
  const factory UserProfileResponse({
    required String name,
    required String surname,
    required String phoneNumber,
    required DateTime createdAt,
    required UserInfo userInfo,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) => _$UserProfileResponseFromJson(json);
}
