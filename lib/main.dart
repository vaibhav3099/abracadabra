import 'package:flutter/material.dart';
import './square.dart';

void main() => runApp( MaterialApp(
    home:  MyApp(),
  )
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.deepOrange[400],
        title: Center(child:  Text("Abracadabra")),
      ),
      backgroundColor: Colors.deepOrange,
      body:  Square(),
    );
  }
}
