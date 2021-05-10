import 'package:buscador_de_gifs/home/home.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscador de gifs',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}