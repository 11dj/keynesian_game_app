import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ui/views/home_screen.dart';
import 'ui/views/first_view.dart';
import 'ui/views/no_found_view.dart';

class Router {
  static initial() => 'home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'first':
        return MaterialPageRoute(builder: (_) => FirstView());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundView());
    }
  }
}
