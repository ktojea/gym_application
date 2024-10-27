import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/data/provider/network/auth/auth_api.dart';
import 'package:gym_application/domain/auth/auth_repository.dart';
import 'package:provider/provider.dart';

class AuthScope extends AppAsyncDependency {
  late final AuthApi _authApi;

  late final AuthRepository authRepository;

  @override
  Future<void> initAsync(BuildContext context) async {
    _authApi = AuthApi(context.global.dio);

    authRepository = AuthRepository(authApi: _authApi);
  }
}

extension AuthScopeExtension on BuildContext {
  AuthScope get auth => read<AuthScope>();
}
