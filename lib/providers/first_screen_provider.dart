import 'package:flutter/material.dart';
import 'package:testrun/model/tile.dart';

class FirstOne with ChangeNotifier {
  List<Tile> _items = [
    Tile(id: 'c1', title: 'tokyo', subtitle: 'japan'),
    Tile(id: 'c2', title: 'nepal', subtitle: 'tikapur'),
  ];
  List<Tile> get items {
    return [..._items]; //--Getter for the listed items--//
  }

  Tile findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
