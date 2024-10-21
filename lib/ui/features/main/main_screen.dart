import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/main/main_wm.dart';
import 'package:gym_application/ui/features/main/widgets/app_grid_widget.dart';
import 'package:gym_application/ui/widgets/decoration/main_app_bar_widget.dart';
import 'package:gym_application/ui/widgets/decoration/text_with_filter_widget.dart';
import 'package:gym_application/ui/features/main/widgets/statistics_widget.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

@RoutePage()
class MainScreen extends ElementaryWidget<IMainScreenWidgetModel> {
  const MainScreen({super.key}) : super(defaultMainScreenWidgetModelFactory);

  @override
  Widget build(IMainScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MainAppBarWidget(
            title: "Наша приложуха",
            onTap: () => wm.onMyProfileTap(),
          ),
        ),
        backgroundColor: AppColors.mainColor,
        foregroundColor: AppColors.mainColorDarkest,
      ),
      body: RefreshIndicator(
        onRefresh: () => wm.onRefresh(),
        child: ListView(
          children: [
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: StatisticsWidget(), //TODO* Градиент красиви
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  const TextWithFilterWidget(
                    mainText: "Группы мышц",
                    secondText: "Все группы",
                  ),
                  const SizedBox(height: 25),
                  EntityStateNotifierBuilder(
                    listenableEntityState: wm.muscleGroupListListenable,
                    loadingBuilder: (_, __) => const Center(child: CircularProgressIndicator()),
                    builder: (_, muscleGroupList) => muscleGroupList == null
                        ? const SizedBox()
                        : AppGridWidget(
                            muscleGroupList: muscleGroupList,
                            onTap: () => wm.onExercisesTap(),
                          ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => wm.onQRScanTap,
        backgroundColor: AppColors.mainColorDark,
        foregroundColor: Colors.white,
        tooltip: "Сканировать QR-код",
        child: const Icon(Icons.qr_code_scanner_rounded),
      ),
    );
  }
}
