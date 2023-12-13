import 'package:dependency_injection_3_with_get_it/features/data/app_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp() {
  print('SetUp is called');
  locator.registerSingleton<AppService>(AppService());
}
