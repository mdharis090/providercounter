import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void SetCount() {
    _count++;
    notifyListeners();
  }
}
