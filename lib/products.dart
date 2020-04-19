import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:testrun/providers/first_screen_provider.dart';
import 'package:testrun/widget/tile_widget.dart';

class ProductHorizon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<FirstOne>(context); //provides the data
    final products = loadedProducts
        .items; //<<--Actual data stored here and sent to child below to take its place in DestyItem---
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: TileWidget(), //<<<---Item to be build in list View--,,
      ),
    );
  }
}
