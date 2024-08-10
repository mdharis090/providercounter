import 'package:flutter/foundation.dart';

class Item {
  final String name;
  Item(this.name);
}

class FavProvider with ChangeNotifier {
  List<Item> _items = [];
  List<Item> get items => _items;

  void addItem(String name) {
    _items.add(Item(name));
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
