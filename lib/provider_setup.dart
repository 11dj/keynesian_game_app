import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import './core/models/all.dart';
import 'locator_setup.dart';

List<SingleChildWidget> providers = [...providerModels];

List<SingleChildWidget> providerModels = [
  // ChangeNotifierProvider<User>(create: (context) => locator<User>()),
  ChangeNotifierProvider<Temp>(create: (context) => locator<Temp>()),
];
