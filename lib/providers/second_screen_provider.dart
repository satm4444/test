import 'package:flutter/material.dart';
import 'package:testrun/model/tile.dart';

class SecondOne with ChangeNotifier {
  List<Tile> _items = [
    Tile(id: 'c1', title: 'paris', subtitle: 'france'),
    Tile(id: 'c2', title: 'seoul', subtitle: 'korea'),
  ];
  List<Tile> get items {
    return [..._items]; //--Getter for the listed items--//
  }

  Tile findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
