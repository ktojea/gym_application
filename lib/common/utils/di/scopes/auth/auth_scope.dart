import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:provider/provider.dart';

class AuthScope extends AppAsyncDependency {
  @override
  Future<void> initAsync(BuildContext context) async {}
}

extension AuthScopeExtension on BuildContext {
  AuthScope get auth => read<AuthScope>();
}
