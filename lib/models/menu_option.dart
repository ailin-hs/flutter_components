import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  //Seteando las variables para mandar a llamar ruta, icon, name, screen

  //nombre y pantalla
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions(
      //Obteniendo las variable que mande a llamar anteriormente
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
