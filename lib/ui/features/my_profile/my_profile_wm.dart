import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/data/models/local/user/user.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_model.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_screen.dart';

abstract interface class IMyProfileScreenWidgetModel implements IWidgetModel {
  ValueNotifier<User> get userListenable;

  ValueNotifier<EntityState<List<Subscription>>> get subscriptionListListenable;

  Future<void> onRefresh();

  void onSubscriptionTap(int id);

  void navigateBack();

  void onEditTap();
}

MyProfileScreenWidgetModel defaultMyProfileScreenWidgetModelFactory(BuildContext context) {
  return MyProfileScreenWidgetModel(
    MyProfileScreenModel(),
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
    await Future.wait([_initSubscriptionList()]);
  }

  Future<void> _initSubscriptionList() async {
    // Показываю пользователю загрузку.
    _subscriptionListEntity.loading();

    try {
      // Загрузка данных.
      await Future.delayed(const Duration(seconds: 2));

      final list = List.generate(
        10,
        (i) => Subscription(
          id: i,
          gymName: 'DDX',
          price: 999,
          endDate: DateTime(2024, 11, 30),
          gymAvatar:
              'https://sun9-5.userapi.com/impg/g7SpGK8Qfz1qmxefP0vnAjdaAKlHQyHIqPamVQ/2eWrOh0lMug.jpg?size=730x599&quality=96&sign=97814d058218d6e1bb9e3f7fbf26d5a6&type=album',
          isNotificated: i % 3 == 0,
        ),
      );

      _subscriptionListEntity.content(list);
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
          choosenSubscription.copyWith(isNotificated: !choosenSubscription.isNotificated);
      _subscriptionListEntity.content(updatedSubscriptionList);
    }
  }

  @override
  Future<void> onRefresh() async => await _initMyProfile();
}
