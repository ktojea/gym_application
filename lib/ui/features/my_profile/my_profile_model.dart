import 'package:elementary/elementary.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/domain/ai/ai_repository.dart';
import 'package:gym_application/domain/user/user_repository.dart';

abstract interface class IMyProfileScreenModel extends ElementaryModel {
  Future<List<Subscription>> getSubscriptions();

  Future<String> getProgressAssessment();
}

class MyProfileScreenModel extends IMyProfileScreenModel {
  MyProfileScreenModel({
    required UserRepository userRepository,
    required AiRepository aiRepository,
  })  : _userRepository = userRepository,
        _aiRepository = aiRepository;

  final UserRepository _userRepository;

  final AiRepository _aiRepository;

  @override
  Future<List<Subscription>> getSubscriptions() async {
    try {
      final subscriptions = await _userRepository.getUserSubscriptions();

      return subscriptions;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String> getProgressAssessment() async {
    try {
      final progressAssessment = await _aiRepository.getProgressAssessment();

      return progressAssessment;
    } on Exception {
      rethrow;
    }
  }
}
