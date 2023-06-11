import 'package:flutter/material.dart';

class LinarScreen extends StatefulWidget {
  const LinarScreen({super.key});
  _LinarScreen createState() => _LinarScreen();
}

class _LinarScreen extends State<LinarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.checklist)),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Linear Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.2,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xffff0000)),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xffff2222)),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.6,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xffff5b5b)),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.8,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xffff81e2)),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 1.0,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xffff00ef)),
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/linear.jpeg'),
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
