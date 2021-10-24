import 'package:flutter/material.dart' hide Router;
import 'ui/views/first_view.dart';
import './styles/customTheme.dart';
import 'router.dart';

import 'package.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CustomStyles customStyles = CustomStyles();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: customStyles.customThemeData(),
          initialRoute: Router.initial(),
          onGenerateRoute: Router.generateRoute,
        ));
  }
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     color: Colors.green,
  //     theme: customStyles.customThemeData(),
  //     home: FirstView(title: 'Flutter Demo Home Page'),
  //     initialRoute: Router.initial(),
  //     onGenerateRoute: Router.generateRoute,
  //   );
  // }
}
