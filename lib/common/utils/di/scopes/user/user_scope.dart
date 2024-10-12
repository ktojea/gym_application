import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:provider/provider.dart';

class UserScope extends AppAsyncDependency {
  @override
  Future<void> initAsync(BuildContext context) async {}
}

extension UserScopeExtension on BuildContext {
  UserScope get user => read<UserScope>();
}
