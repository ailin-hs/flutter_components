//controlador para las rutas del proyectos
import 'package:flutter/material.dart';
import 'package:fluttercomponentes/screens/home.dart';
//importar las pantallas del proyecto
import 'package:fluttercomponentes/screens/screens.dart';
//importar los modelos del proyecto
import 'package:fluttercomponentes/models/models.dart';

class AppRoutes {
  static const initialRoute = "home";
//traemos las opciones de MenuOption a partir de un map
  static var menuOption = <MenuOption>[
    MenuOption(
        route: "ListView1",
        icon: Icons.remove,
        name: "ListView tipo 1",
        screen: ListView1Screen()),
    MenuOption(
        route: "ListView2",
        icon: Icons.remove,
        name: "ListView tipo 2",
        screen: ListView2Screen()),
    MenuOption(
        route: "TabView",
        icon: Icons.remove,
        name: "TabView y TabBar",
        screen: TabViewScreen()),
    MenuOption(
        route: "ButtonView",
        icon: Icons.remove,
        name: "Tipos de Button",
        screen: ButtonViewScreen()),
    MenuOption(
        route: "GridView",
        icon: Icons.remove,
        name: "Grid View",
        screen: GridViewScreen()),
    MenuOption(
        route: "CardView",
        icon: Icons.remove,
        name: "Card View",
        screen: CardViewScreen()),
    MenuOption(
        route: "AlertDialog",
        icon: Icons.remove,
        name: "Alert Dialog",
        screen: AlertDialogScreen()),
    MenuOption(
        route: "icons",
        icon: Icons.remove,
        name: "iconos",
        screen: IconsScreen()),
    MenuOption(
        route: "Linear",
        icon: Icons.remove,
        name: "Linear",
        screen: LinarScreen()),
    MenuOption(
        route: "Checkboxview",
        icon: Icons.remove,
        name: "Checkbox",
        screen: CheckboxScreen()),
    MenuOption(
        route: "Circularprogres",
        icon: Icons.remove,
        name: "Progreso Circular",
        screen: CircularProgressScreen()),
    MenuOption(
        route: "switch",
        icon: Icons.remove,
        name: "Switch",
        screen: SwitchScreen()),
    MenuOption(
        route: "snackbar",
        icon: Icons.remove,
        name: "Snack Bar",
        screen: SnackBarScreen()),
    MenuOption(
        route: "sliderview",
        icon: Icons.remove,
        name: "Slider View",
        screen: SliderViewScreen()),
    MenuOption(
        route: "radiobutton",
        icon: Icons.remove,
        name: "Radio Button",
        screen: RadioButtonScreen()),
    MenuOption(
        route: "textbutton",
        icon: Icons.remove,
        name: "Button Text",
        screen: ButtonTextScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
