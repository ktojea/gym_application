import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/data/models/local/user/user.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_model.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_screen.dart';

abstract interface class IMyProfileScreenWidgetModel implements IWidgetModel {
  ValueNotifier<EntityState<String>> get aiTextListenable;

  ValueNotifier<EntityState<List<Subscription>>> get subscriptionListListenable;

  ValueNotifier<User> get userListenable;

  Future<void> onRefresh();

  void onSubscriptionTap(int id);

  void navigateBack();

  void onLogoutTap();

  void onEditTap();
}

MyProfileScreenWidgetModel defaultMyProfileScreenWidgetModelFactory(BuildContext context) {
  return MyProfileScreenWidgetModel(
    MyProfileScreenModel(
      userRepository: context.userInfo.userRepository,
      aiRepository: context.userInfo.aiRepository,
      localStorageRepository: context.global.localStorageRepository,
    ),
  );
}

class MyProfileScreenWidgetModel extends WidgetModel<MyProfileScreen, IMyProfileScreenModel>
    implements IMyProfileScreenWidgetModel {
  MyProfileScreenWidgetModel(super.model);

  @override
  ValueNotifier<User> get userListenable => context.userInfo.userNotifier;

  final _subscriptionListEntity = EntityStateNotifier<List<Subscription>>();

  @override
  ValueNotifier<EntityState<List<Subscription>>> get subscriptionListListenable => _subscriptionListEntity;

  @override
  Future<void> initWidgetModel() async {
    await _initMyProfile();

    super.initWidgetModel();
  }

  Future<void> _initMyProfile() async {
    await Future.wait([
      _initSubscriptionList(),
      _initAiText(),
    ]);
  }

  Future<void> _initSubscriptionList() async {
    _subscriptionListEntity.loading();

    try {
      final subscriptions = await model.getSubscriptions();

      _subscriptionListEntity.content(subscriptions);
    } on Exception {
      _subscriptionListEntity.error();
      print('Error');
    }
  }

  @override
  void navigateBack() => context.router.maybePop();

  @override
  void onEditTap() => context.userInfo.userNotifier.value = context.userInfo.userNotifier.value.copyWith(
      imageUrl:
          'https://sun9-58.userapi.com/impg/LPCAU0Uw-iBtymeiAadvCCSC_cfhmvqf4saOxA/c1fRG39whi4.jpg?size=468x430&quality=95&sign=c5ff5d193601e8561c1241fd28f25511&type=album');

  @override
  void onSubscriptionTap(int id) {
    final subscriptionList = _subscriptionListEntity.value.data;
    if (subscriptionList == null) return;

    final updatedSubscriptionList = List<Subscription>.from(subscriptionList);
    final indexChoosenSubscription = updatedSubscriptionList.indexWhere((s) => s.id == id);

    if (indexChoosenSubscription >= 0) {
      final choosenSubscription = updatedSubscriptionList[indexChoosenSubscription];

      updatedSubscriptionList[indexChoosenSubscription] =
          choosenSubscription.copyWith(notify: !choosenSubscription.notify);
      _subscriptionListEntity.content(updatedSubscriptionList);
    }
  }

  @override
  Future<void> onRefresh() async => await _initMyProfile();

  final _aiTextEntity = EntityStateNotifier<String>();

  @override
  ValueNotifier<EntityState<String>> get aiTextListenable => _aiTextEntity;

  Future<void> _initAiText() async {
    _aiTextEntity.loading();

    try {
      final progressAssessment = await model.getProgressAssessment();

      _aiTextEntity.content(progressAssessment);
    } on Exception {
      _aiTextEntity.error();
    }
  }

  @override
  Future<void> onLogoutTap() async {
    try {
      model.removeInfoAboutUser();

      await context.global.reinitDioAsync();

      _naviageteToSplashScreen();
    } on Exception {
      //TODO add exception
    }
  }

  void _naviageteToSplashScreen() => context.router.replace(const AuthScopeWrapperRoute());
}
