import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:gym_application/data/provider/local/token_lds/token_lds.dart';
import 'package:gym_application/domain/local_storage/local_storage_repository.dart';
import 'package:provider/provider.dart';

class GlobalScope extends AppAsyncDependency {
  late Dio dio;

  late final TokenLDS _tokenLDS;

  late final LocalStorageRepository localStorageRepository;

  @override
  Future<void> initAsync(BuildContext context) async {
    _tokenLDS = TokenLDS();

    localStorageRepository = LocalStorageRepository(tokenLDS: _tokenLDS);

    await _initDioAsync();
  }

  Future<void> reinitDioAsync() async => await _initDioAsync();

  Future<void> _initDioAsync() async {
    final token = await localStorageRepository.getTokenFromLocalStorage();

    dio = Dio(
      BaseOptions(
        baseUrl: 'http://176.109.104.29:8000',
        connectTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        headers: token != null ? {'Authorization': token} : {},
      ),
    );
  }
}

extension GlobalScopeExtension on BuildContext {
  GlobalScope get global => read<GlobalScope>();
}
