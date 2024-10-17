import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_wm.dart';
import 'package:gym_application/ui/features/my_profile/widgets/app_bar_analogue.dart';
import 'package:gym_application/ui/features/my_profile/widgets/user_info.dart';
import 'package:gym_application/ui/widgets/plate.dart';

@RoutePage()
class MyProfileScreen extends ElementaryWidget<IMyProfileScreenWidgetModel> {
  const MyProfileScreen({super.key})
      : super(defaultMyProfileScreenWidgetModelFactory);

  @override
  Widget build(IMyProfileScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 227, 236, 1),
      body: SafeArea(
        minimum: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            AppBarAnalogue(onTap: wm.navigateBack),
            const SizedBox(height: 25),
            const Text(
              "Мой профиль",
              style: TextStyle(
                color: UserInfo.mainColorDarkest,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 25),
            UserInfo(
              firstName: wm.user.firstName,
              lastName: wm.user.lastName,
              age: wm.user.age,
              height: wm.user.height,
              weight: wm.user.weight,
              bmi: wm.user.bmi,
            ),
            const SizedBox(height: 25),
            const Row(
              children: [
                Text(
                  "Абонименты",
                  style: TextStyle(
                    color: UserInfo.mainColorDarkest,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.notification_add_outlined,
                  color: UserInfo.mainColorDarkest,
                ),
              ],
            ),
            const SizedBox(height: 25),
            Plate(
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: UserInfo.mainColor,
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Большие мышце",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Описание",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
