import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_wm.dart';
import 'package:gym_application/ui/features/my_profile/widgets/user_info.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/info/subscription_widget.dart';

@RoutePage()
class MyProfileScreen extends ElementaryWidget<IMyProfileScreenWidgetModel> {
  const MyProfileScreen({super.key})
      : super(defaultMyProfileScreenWidgetModelFactory);

  @override
  Widget build(IMyProfileScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
      ),
      body: RefreshIndicator(
        onRefresh: () => wm.onRefresh(),
        child: ListView(
          children: [
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Мой профиль",
                style: TextStyle(
                  color: AppColors.mainColorDarkest,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 25),
            EntityStateNotifierBuilder(
              listenableEntityState: wm.userListenable,
              loadingBuilder: (_, __) =>
                  const Center(child: CircularProgressIndicator()),
              builder: (_, user) => user == null
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: UserInfo(
                        user: user,
                        onEiditTap: () => wm.onEditTap,
                      ),
                    ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    "Абонементы",
                    style: TextStyle(
                      color: AppColors.mainColorDarkest,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.notification_add_outlined,
                    color: AppColors.mainColorDarkest,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            EntityStateNotifierBuilder(
              listenableEntityState: wm.subscriptionListListenable,
              loadingBuilder: (_, __) =>
                  const Center(child: CircularProgressIndicator()),
              builder: (_, subscriptionList) => subscriptionList == null
                  ? const SizedBox()
                  : Column(
                      children: subscriptionList
                          .map(
                            (subscription) => Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, right: 25, left: 25),
                              child: SubscriptionWidget(
                                subscription: subscription,
                                onTap: (id) =>
                                    wm.onSubscriptionTap(subscription.id),
                              ),
                            ),
                          )
                          .toList(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
