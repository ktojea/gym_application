import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/data/provider/local/token_lds/token_lds.dart';
import 'package:gym_application/data/provider/network/auth/auth_api.dart';
import 'package:gym_application/domain/auth/auth_repository.dart';
import 'package:gym_application/domain/local_storage/local_storage_repository.dart';
import 'package:provider/provider.dart';

class GlobalScope extends AppAsyncDependency {
  late final Dio dio;

  late final TokenLDS _tokenLDS;

  late final LocalStorageRepository localStorageRepository;

  late final AuthApi _authApi;

  late final AuthRepository authRepository;

  @override
  Future<void> initAsync(BuildContext context) async {
    await _initDioAsync();
  }

  Future<void> _initDioAsync() async {
    _tokenLDS = TokenLDS();

    localStorageRepository = LocalStorageRepository(tokenLDS: _tokenLDS);

    final token = await localStorageRepository.getTokenFromLocalStorage();

    dio = Dio(
      BaseOptions(
        baseUrl: 'http://176.123.161.174:8000',
        connectTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        headers: {'Authorization': token},
      ),
    );

    _authApi = AuthApi(dio);

    authRepository = AuthRepository(authApi: _authApi);
  }
}

extension GlobalScopeExtension on BuildContext {
  GlobalScope get global => read<GlobalScope>();
}
