import 'package:get_it/get_it.dart';
import 'package:gift_service_2/services/auth_service.dart';
import 'package:gift_service_2/services/chat_service.dart';
import 'package:gift_service_2/services/repository_service.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => RepositoryService());
  locator.registerLazySingleton(() => ChatService());
}