import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_wm.dart';
import 'package:gym_application/ui/features/my_profile/widgets/user_info_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/info/ai_helper_widget.dart';
import 'package:gym_application/ui/widgets/info/subscription_widget.dart';

@RoutePage()
class MyProfileScreen extends ElementaryWidget<IMyProfileScreenWidgetModel> {
  const MyProfileScreen({super.key}) : super(defaultMyProfileScreenWidgetModelFactory);

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
            ValueListenableBuilder(
              valueListenable: wm.userListenable,
              builder: (_, user, __) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: UserInfoWidget(
                  user: user,
                  onEditTap: () => wm.onEditTap(),
                ),
              ),
            ),
            const SizedBox(height: 25),
            EntityStateNotifierBuilder(
              listenableEntityState: wm.aiTextListenable,
              loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
              builder: (_, aiText) => aiText == null
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: AiHelperWidget(
                        title: 'Прогресс',
                        text: aiText,
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
              loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
              builder: (_, subscriptionList) => subscriptionList == null
                  ? const SizedBox()
                  : UserSubcriptionsWidget(
                      subscriptions: subscriptionList,
                      onSubscriptionTap: (subscriptionId) => wm.onSubscriptionTap(subscriptionId),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserSubcriptionsWidget extends StatelessWidget {
  const UserSubcriptionsWidget({
    super.key,
    required this.subscriptions,
    required this.onSubscriptionTap,
  });

  final List<Subscription> subscriptions;
  final void Function(int subscriptionId) onSubscriptionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: subscriptions
          .map(
            (subscription) => Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 25, left: 25),
              child: SubscriptionWidget(
                subscription: subscription,
                onTap: (id) => onSubscriptionTap(subscription.id),
              ),
            ),
          )
          .toList(),
    );
  }
}
