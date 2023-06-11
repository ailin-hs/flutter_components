import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});
  _IconsScreen createState() => _IconsScreen();
}

class _IconsScreen extends State<IconsScreen> {
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
          title: Text('Flutter Iconos'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 100),
              children: [
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.search)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.settings)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.check_circle)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.logout)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.refresh)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.add_circle)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.download)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.delete_forever)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.add_box)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.key)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.block)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.fullscreen)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.done_outlined)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.backspace)),
                    ],
                  ),
                ),
                Container(
                  color: Apptheme.primary,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.ios_share)),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons.jpeg'),
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
