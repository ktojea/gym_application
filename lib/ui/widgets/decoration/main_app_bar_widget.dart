import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/user/user_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/user_avatar.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.userInfo.userNotifier,
      builder: (_, user, __) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title == null
              ? const SizedBox.shrink()
              : Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColorDarkest,
                  ),
                ),
          GestureDetector(
            onTap: () => context.router.push(const MyProfileRoute()),
            child: SizedBox.square(
              dimension: 44,
              child: UserAvatar(
                imageUrl: user.imageUrl,
                borderColor: AppColors.mainColorDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
