import 'package:flutter/material.dart';

class WidgetEjercicio3 extends StatefulWidget {
  int contador=0;
  int contador2=0;
  @override
  State<StatefulWidget> createState() {
    return _WidgetEjercicio3();
  }
}
class _WidgetEjercicio3 extends State<WidgetEjercicio3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Contador #1 ${widget.contador} , #2 ${widget.contador2}"),
        ElevatedButton(onPressed: (){
          setState(() {
            widget.contador++;
          });
        }, child: Text("boton1")),
        ElevatedButton(onPressed: clickBoton2, child: Text("boton2")),
      ],
    );
  }
  void clickBoton2() {
    setState(() {
      widget.contador2++;
    });

  }
}