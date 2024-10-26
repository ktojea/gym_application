import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/domain/user/user_repository.dart';

abstract interface class IMyProfileScreenModel extends ElementaryModel {
  Future<List<Subscription>> getSubscriptions();
}

class MyProfileScreenModel extends IMyProfileScreenModel {
  MyProfileScreenModel({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  final UserRepository _userRepository;

  @override
  Future<List<Subscription>> getSubscriptions() async {
    try {
      final subscriptions = await _userRepository.getUserSubscriptions();

      return subscriptions;
    } on Exception {
      rethrow;
    }
  }
}
