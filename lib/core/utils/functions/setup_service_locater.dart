import 'package:bookly_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitit = GetIt.instance;

void setUpServiceLocater() {
  // anything will be create more than once object we can use getit to create an instance of it and use it anytime
  gitit.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  gitit.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      homelocaldatasource: HomeLocalDataSourceImpl(),
      homeremotedatasource: HomeRemoteDataSourceImpl(
        gitit.get<ApiServices>()
      ),
    ),
  );
}
