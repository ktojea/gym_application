import 'package:dio/dio.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/data/models/remote/my_profile/response/user_profile_response/user_profile_response.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET('/users/subscriptions')
  Future<List<Subscription>> getUserSubscriptions();

  @GET('/users/profile')
  Future<UserProfileResponse> getUserProfile();
}
