import 'package:flutter/material.dart';

class ButtonViewScreen extends StatefulWidget {
  const ButtonViewScreen({super.key});
  _ButtonViewScreen createState() => _ButtonViewScreen();
}

class _ButtonViewScreen extends State<ButtonViewScreen> {
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
          title: Text('Flutter Tipos de Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              //habilitamos la opcion
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text("Boton texto"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("Boton Elevated"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: OutlinedButton(
                    child: Text("Boton Outlined"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text("Boton Floating Action"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 50,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text("Boton Popup Menu"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextButton(
                    child: Text("Boton Button Bar"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/boton texto.jpeg'),
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
