import 'package:bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/core/Utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt<ApiService>(),
    ),
  );
}
