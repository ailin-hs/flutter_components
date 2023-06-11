import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  var vengadores = ["capitan america", "iron man", "hulk", "thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          //obteniendo el tamaño de la lista
          itemCount: vengadores.length,
          itemBuilder: (context, index) => ListTile(
            //asignando el nombre de LIstTile de acuerdo a la lista
            title: Text(vengadores[index]),
            //asignando los colores
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.red,
            ),
            onTap: () {
              //variable que obtiene opcion selecionada
              var opc = vengadores[index];
              //mostramos variable en consola
              print(opc);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
