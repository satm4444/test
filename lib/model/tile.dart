import 'package:flutter/material.dart';

class Tile with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;

  Tile({
    @required this.id,
    @required this.title,
    @required this.subtitle,
  });
}
