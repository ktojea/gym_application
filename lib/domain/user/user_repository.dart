import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/data/provider/network/user/user_api.dart';

class UserRepository {
  UserRepository({required UserApi userApi}) : _userApi = userApi;

  final UserApi _userApi;

  Future<List<Subscription>> getUserSubscriptions() async {
    try {
      final subscriptionList = await _userApi.getUserSubscriptions();

      return subscriptionList;
    } on Exception {
      rethrow;
    }
  }
}
