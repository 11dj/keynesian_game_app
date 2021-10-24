import 'package:flutter/widgets.dart';

class Temp with ChangeNotifier {
  String? initial;
  String? screen = 'home';
  var event;
  bool isLoading = false;
  var runnerList = [];
  var eventList = [];

  Temp() {
    _fetchSomething(initial = 'initial');
  }

  void reset() {
    event = null;
    isLoading = false;
    runnerList = eventList = [];

    notifyListeners();
  }

  void updateScreen(value) {
    screen = value;
    notifyListeners();
  }

  Future<void> _fetchSomething(String nv) async {
    initial = nv;
  }
}
