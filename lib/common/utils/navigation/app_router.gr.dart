// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthScopeWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScopeWrapperScreen(),
      );
    },
    EquipmentRoute.name: (routeData) {
      final args = routeData.argsAs<EquipmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EquipmentScreen(
          equipmentId: args.equipmentId,
          exerciseId: args.exerciseId,
          key: args.key,
        ),
      );
    },
    ExercisesRoute.name: (routeData) {
      final args = routeData.argsAs<ExercisesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExercisesScreen(
          key: args.key,
          muscleGroup: args.muscleGroup,
        ),
      );
    },
    GlobalScopeWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GlobalScopeWrapperScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MyProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyProfileScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    ScannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScannerScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    UserScopeWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserScopeWrapperScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthScopeWrapperScreen]
class AuthScopeWrapperRoute extends PageRouteInfo<void> {
  const AuthScopeWrapperRoute({List<PageRouteInfo>? children})
      : super(
          AuthScopeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthScopeWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EquipmentScreen]
class EquipmentRoute extends PageRouteInfo<EquipmentRouteArgs> {
  EquipmentRoute({
    required int equipmentId,
    int? exerciseId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EquipmentRoute.name,
          args: EquipmentRouteArgs(
            equipmentId: equipmentId,
            exerciseId: exerciseId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EquipmentRoute';

  static const PageInfo<EquipmentRouteArgs> page =
      PageInfo<EquipmentRouteArgs>(name);
}

class EquipmentRouteArgs {
  const EquipmentRouteArgs({
    required this.equipmentId,
    this.exerciseId,
    this.key,
  });

  final int equipmentId;

  final int? exerciseId;

  final Key? key;

  @override
  String toString() {
    return 'EquipmentRouteArgs{equipmentId: $equipmentId, exerciseId: $exerciseId, key: $key}';
  }
}

/// generated route for
/// [ExercisesScreen]
class ExercisesRoute extends PageRouteInfo<ExercisesRouteArgs> {
  ExercisesRoute({
    Key? key,
    required MuscleGroup muscleGroup,
    List<PageRouteInfo>? children,
  }) : super(
          ExercisesRoute.name,
          args: ExercisesRouteArgs(
            key: key,
            muscleGroup: muscleGroup,
          ),
          initialChildren: children,
        );

  static const String name = 'ExercisesRoute';

  static const PageInfo<ExercisesRouteArgs> page =
      PageInfo<ExercisesRouteArgs>(name);
}

class ExercisesRouteArgs {
  const ExercisesRouteArgs({
    this.key,
    required this.muscleGroup,
  });

  final Key? key;

  final MuscleGroup muscleGroup;

  @override
  String toString() {
    return 'ExercisesRouteArgs{key: $key, muscleGroup: $muscleGroup}';
  }
}

/// generated route for
/// [GlobalScopeWrapperScreen]
class GlobalScopeWrapperRoute extends PageRouteInfo<void> {
  const GlobalScopeWrapperRoute({List<PageRouteInfo>? children})
      : super(
          GlobalScopeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'GlobalScopeWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyProfileScreen]
class MyProfileRoute extends PageRouteInfo<void> {
  const MyProfileRoute({List<PageRouteInfo>? children})
      : super(
          MyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScannerScreen]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute({List<PageRouteInfo>? children})
      : super(
          ScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScannerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserScopeWrapperScreen]
class UserScopeWrapperRoute extends PageRouteInfo<void> {
  const UserScopeWrapperRoute({List<PageRouteInfo>? children})
      : super(
          UserScopeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserScopeWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
