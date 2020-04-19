import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testrun/newpage.dart';
import 'package:testrun/products.dart';
import 'package:testrun/providers/first_screen_provider.dart';
import 'package:testrun/providers/second_screen_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: FirstOne(),
        ),
        ChangeNotifierProvider.value(
          value: SecondOne(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('tEST'),
          ),
          body: Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: ProductHorizon(),
          ),
        ),
        routes: {
          '/newpage': (ctx) => NewPage(),
        },
      ),
    );
  }
}
