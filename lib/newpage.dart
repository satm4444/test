import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  String selectedTitle;
  String selectedDes;
  String selectedId;
  @override
  Widget build(BuildContext context) {
    final routeAgrs = ModalRoute.of(context).settings.arguments as Map;
    selectedTitle = routeAgrs['titl'];
    selectedId = routeAgrs['id'];
    selectedDes = routeAgrs['des'];
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedTitle),
      ),
      body: Container(
        height: 200,
        width: 350,
        color: Colors.blue,
      ),
    );
  }
}
