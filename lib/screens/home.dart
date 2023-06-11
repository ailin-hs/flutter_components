import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/router/app_routes.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes Flutter'),
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: Icon(menuOptions[i].icon, color: Apptheme.primary),
            title: Text(menuOptions[i].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
