import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int count = 1;

  void increment() {
    count++;
    notifyListeners();
  }
}

class DashboardBottomNavigationProvider with ChangeNotifier {
  int activeIndex = 0;

  void onTap(int value) {
    activeIndex = value;
    notifyListeners();
  }
}
