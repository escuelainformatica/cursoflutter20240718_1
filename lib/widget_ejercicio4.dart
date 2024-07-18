import 'package:flutter/material.dart';

class WidgetEjercicio4 extends StatefulWidget {
  String campoPadre="";
  @override
  State<StatefulWidget> createState() {
    return _WidgetEjercicio4();
  }
}
class _WidgetEjercicio4 extends State<WidgetEjercicio4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Column(
        children: [
          Text(widget.campoPadre),
          ElevatedButton(onPressed: () {
            setState(() {
              widget.campoPadre="valor padre";
            });
          }, child: Text("boton padre")),
          WidgetEjercicio4Hijo(() {
            setState(() {
              widget.campoPadre="valor padre modificado desde hijo";
            });
          })
        ],
      ),
    );
  }
}

class WidgetEjercicio4Hijo extends StatefulWidget {
  String campoHijo="hijo";
  void Function() clickBoton;
  WidgetEjercicio4Hijo(this.clickBoton);
  @override
  State<StatefulWidget> createState() {
    return _WidgetEjercicio4Hijo();
  }
}
class _WidgetEjercicio4Hijo extends State<WidgetEjercicio4Hijo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Column(
        children: [
          Text(widget.campoHijo),
          ElevatedButton(onPressed: widget.clickBoton, child: Text("Boton Hijo"))
        ],
      )
    );
  }
}
