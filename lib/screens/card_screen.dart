import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class CardViewScreen extends StatefulWidget {
  const CardViewScreen({super.key});
  _CardViewScreen createState() => _CardViewScreen();
}

class _CardViewScreen extends State<CardViewScreen> {
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
          title: Text('Flutter TabBar'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Card(
                  child: ListTile(
                    title: Text(
                      "card con backgrouncolor",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Apptheme.primary,
                ),
                Card(
                  child: ListTile(
                    title: Text("card con elevation"),
                  ),
                  elevation: 8,
                ),
                Card(
                  child: ListTile(
                    title: Text("Card con shadowcolor"),
                  ),
                  elevation: 8,
                  shadowColor: Apptheme.primary,
                ),
                Card(
                  child: ListTile(
                    title: Text("card con shape"),
                  ),
                  elevation: 8,
                  shadowColor: Apptheme.primary,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                Card(
                  child: ListTile(
                    //leading: Icon(Icons.music_note),
                    title: Text("card con margin"),
                  ),
                  elevation: 8,
                  shadowColor: Apptheme.primary,
                  margin: EdgeInsets.all(20),
                ),
                Container(
                  height: 20,
                  width: 20,
                  child: Card(
                    child: ListTile(
                      title: Text("card con height y width"),
                    ),
                    elevation: 8,
                    shadowColor: Apptheme.primary,
                    margin: EdgeInsets.all(20),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("card con rounded corners"),
                  ),
                  elevation: 8,
                  shadowColor: Apptheme.primary,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/card.jpeg'),
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
