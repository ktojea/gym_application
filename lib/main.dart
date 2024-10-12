import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';

void main() async {
  runApp(
    AsyncDependencyWidget(
      create: GlobalScope.new,
      loaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
      errorBuilder: (context) => const Center(child: Text('Error :(')),
      child: const App(),
    ),
  );
}

final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gym app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
