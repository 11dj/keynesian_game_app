import 'package:get_it/get_it.dart';

import './core/models/all.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // locator.registerSingleton<User>(User());
  locator.registerSingleton<Temp>(Temp());
}
