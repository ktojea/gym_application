import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/app_async_dependency.dart';
import 'package:provider/provider.dart';

class GlobalScope extends AppAsyncDependency {
  late final Dio dio;

  @override
  Future<void> initAsync(BuildContext context) async {
    // await _initDioAsync();
  }

  // Future<void> _initDioAsync() async {
  //   final token = await localStorageRepository.getTokenFromLocalStorage();

  //   dio = Dio(
  //     BaseOptions(
  //       baseUrl: 'http://176.109.110.168:8000',
  //       connectTimeout: const Duration(seconds: 60),
  //       sendTimeout: const Duration(seconds: 60),
  //       receiveTimeout: const Duration(seconds: 60),
  //       headers: {'Authorization': token},
  //     ),
  //   );
  // }
}

extension GlobalScopeExtension on BuildContext {
  GlobalScope get global => read<GlobalScope>();
}
