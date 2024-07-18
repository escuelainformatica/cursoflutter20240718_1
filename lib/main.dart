import 'package:flutter/material.dart';
import 'package:flutter_1807/widget_ejercicio1.dart';
import 'package:flutter_1807/widget_ejercicio2.dart';
import 'package:flutter_1807/widget_ejercicio3.dart';
import 'package:flutter_1807/widget_ejercicio4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String pais1="Chile";
  String pais2="Argentina";
  String pais3="Peru";
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
        children: [
          WidgetEjercicio4(),
        ],
      ),
    );
  }
}
