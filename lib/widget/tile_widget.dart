import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testrun/model/tile.dart';

class TileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedProducts = Provider.of<Tile>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/newpage', arguments: {
            'titl': selectedProducts.title,
            'id': selectedProducts.id,
            'des': selectedProducts.subtitle,
          });
        },
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
          child: Text(selectedProducts.title),
        ),
      ),
    );
  }
}
