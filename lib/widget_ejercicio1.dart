import 'package:flutter/material.dart';

class WidgetEjercicio1 extends StatefulWidget {
  String pais1;
  String pais2;
  String pais3;
  WidgetEjercicio1(this.pais1,this.pais2,this.pais3);
  @override
  State<StatefulWidget> createState() {
    return _WidgetEjercicio1();
  }
}
class _WidgetEjercicio1 extends State<WidgetEjercicio1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.pais1),Text(widget.pais2),Text(widget.pais3)
      ],
    );
  }
}