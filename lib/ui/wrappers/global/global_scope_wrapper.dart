import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/common/utils/di/scopes/Global/Global_scope.dart';

@RoutePage()
class GlobalScopeWrapperScreen extends StatelessWidget {
  const GlobalScopeWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDependencyWidget(
      create: GlobalScope.new,
      loaderBuilder: (context) => const SizedBox(),
      errorBuilder: (context) => const SizedBox(),
      child: const AutoRouter(),
    );
  }
}
