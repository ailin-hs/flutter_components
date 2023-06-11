import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});
  _SnackBarScreenState createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
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
          title: Text('Flutter SnackBar'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Mensaje"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Padding"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            padding: EdgeInsets.all(20),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Shape"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Hola! soy snackbar'),
                              backgroundColor: Color(0xff00c9ff),
                              shape: StadiumBorder()));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Behavior"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            behavior: SnackBarBehavior.floating,
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Width"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Hola! soy snackbar'),
                              backgroundColor: Color(0xff00c9ff),
                              behavior: SnackBarBehavior.floating,
                              width: 200));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Margin"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(50),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Elevation"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(50),
                            elevation: 30,
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Duration"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(milliseconds: 1000),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con Action"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: 'Dismiss',
                              disabledTextColor: Color(0xffffef00),
                              textColor: Color(0xff000000),
                              onPressed: () {
                                //Do whatever you want
                              },
                            ),
                          ));
                        }),
                  ),
                  Center(
                    child: ElevatedButton(
                        child: const Text("SnackBar con onVisible"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Hola! soy snackbar'),
                            backgroundColor: Color(0xff00c9ff),
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: 'Dismiss',
                              disabledTextColor: Color(0xffffef00),
                              textColor: Color(0xff000000),
                              onPressed: () {
                                //Do whatever you want
                              },
                            ),
                            onVisible: () {},
                          ));
                        }),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/snack bar.jpeg'),
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
