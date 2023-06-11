import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});
  _GridViewScreen createState() => _GridViewScreen();
}

class _GridViewScreen extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.checklist),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter GridView'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //cuantas columnas va a tener mi grid
                  crossAxisCount: 2,
                  //el espacio entre las columnas
                  crossAxisSpacing: 5,
                  //espacio entre filas
                  mainAxisSpacing: 5,
                  //alto de cada columna
                  mainAxisExtent: 150),
              children: [
                Card(
                  color: Apptheme.primary,
                  child: Text("1"),
                ),
                Card(
                  color: Apptheme.primary,
                  child: Text("2"),
                ),
                Card(
                  color: Apptheme.primary,
                  child: Text("3"),
                ),
                Card(
                  color: Apptheme.primary,
                  child: Text("4"),
                )
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/gridview.jpeg'),
                  Text("codigo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
