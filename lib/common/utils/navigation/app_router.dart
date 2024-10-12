import 'package:auto_route/auto_route.dart';
import 'package:gym_application/ui/features/equipment/equipment_screen.dart';
import 'package:gym_application/ui/features/main/main_screen.dart';
import 'package:gym_application/ui/features/exercises/exercises_screen.dart';
import 'package:gym_application/ui/features/login/login_screen.dart';
import 'package:gym_application/ui/features/my_profile/my_profile_screen.dart';
import 'package:gym_application/ui/features/registration/registration_screen.dart';
import 'package:gym_application/ui/features/splash/splash_screen.dart';
import 'package:gym_application/ui/wrappers/auth/auth_scope_wrapper.dart';
import 'package:gym_application/ui/wrappers/global/global_scope_wrapper.dart';
import 'package:gym_application/ui/wrappers/user/user_scope_wrapper.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthScopeWrapperRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(
              page: SplashRoute.page,
              path: 'splash',
              initial: true,
            ),
            AutoRoute(
              page: LoginRoute.page,
              path: 'login',
            ),
            AutoRoute(
              page: RegistrationRoute.page,
              path: 'registration',
            ),
          ],
        ),
        AutoRoute(
          page: UserScopeWrapperRoute.page,
          path: '/user',
          children: [
            AutoRoute(
              page: MainRoute.page,
              path: 'main',
              initial: true,
            ),
            AutoRoute(
              page: MyProfileRoute.page,
              path: 'my-profile',
            ),
            AutoRoute(
              page: EquipmentRoute.page,
              path: 'equipment',
            ),
            AutoRoute(
              page: ExercisesRoute.page,
              path: 'exercises',
            ),
          ],
        ),
      ];
}
