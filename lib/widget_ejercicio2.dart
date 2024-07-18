import 'package:flutter/material.dart';

class WidgetEjercicio2 extends StatefulWidget {
  String campo1="hola";
  String campo2="mundo";
  @override
  State<StatefulWidget> createState() {
    return _WidgetEjercicio2();
  }
}
class _WidgetEjercicio2 extends State<WidgetEjercicio2> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.campo1),
        Text(widget.campo2),
        ElevatedButton(onPressed: () {
          setState(() {
            widget.campo1="se hizo click";
          });
          // aqui va un codigo
        }, child: Text("este es el boton")),
        ElevatedButton(onPressed: () {
          setState(() {
            int variable=0;
            widget.campo2="boton2";
          });
        }, child: Text("segundo boton"))
      ],
    );
  }
}