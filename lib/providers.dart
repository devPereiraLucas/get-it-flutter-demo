import 'package:flutter_api_demo/pages/users/users_controller.dart';
import 'package:flutter_api_demo/repositories/users_repository.dart';
import 'package:flutter_api_demo/services/auth_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerLazySingleton<UsersRepository>(() => UsersRepository());
  getIt.registerLazySingleton<UsersController>(() => UsersController(
        usersRepository: getIt<UsersRepository>(),
      ));
  getIt.registerSingleton<AuthService>(AuthService());
}
