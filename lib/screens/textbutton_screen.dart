import 'package:flutter/material.dart';

class ButtonTextScreen extends StatefulWidget {
  const ButtonTextScreen({super.key});
  _ButtonTextScreenState createState() => _ButtonTextScreenState();
}

class _ButtonTextScreenState extends State<ButtonTextScreen> {
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
          title: Text('TextButton'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    child: TextButton(
                      child: Text("Boton de Texto"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton.icon(
                      icon: Icon(Icons.save),
                      label: Text("Guardar"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton style background color"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xffe414ad)),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton style"),
                      style: TextButton.styleFrom(primary: Color(0xffe912d4)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton foregroundColor(primary)"),
                      style: TextButton.styleFrom(
                        primary: Color(0xffed7373),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton backgroundColor"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xffed1fa9),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                      child: TextButton(
                    child: Text("Boton disabledColor(onSurface)"),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color(0xfff5d9f9),
                      onSurface: Color(0xfff03b09),
                    ),
                    onPressed: null,
                  )),
                  Container(
                    child: TextButton(
                      child: Text("Boton side"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xff0cffec),
                          side: BorderSide(color: Color(0xffff2222), width: 1)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton elevado"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff03f7f7),
                        side: BorderSide(color: Color(0xffff3c00), width: 1),
                        elevation: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton minimumSize"),
                      style: TextButton.styleFrom(
                        primary: Color(0xffffffff),
                        backgroundColor: Color(0xff02f3ff),
                        side: BorderSide(color: Color(0xff08fff8), width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton shadowColor"),
                      style: TextButton.styleFrom(
                        primary: Color(0xffffffff),
                        backgroundColor: Color(0x8e059cff),
                        side: BorderSide(color: Color(0xc001fefe), width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Color(0xffff1100),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton shape"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff00dcfe),
                        side: BorderSide(color: Color(0xff07f5ce), width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Color(0xfff71606),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton Borde circular"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff00d8f9),
                        side: BorderSide(color: Color(0xff00effc), width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Color(0xff931b12),
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Botin padding (EdgeIsets.all())"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xff05f2d2),
                          side: BorderSide(color: Color(0xff13eedc), width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Color(0xffd21407),
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 15, bottom: 15)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton EdgeInsets.symmetric()"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xff01faf2),
                          side: BorderSide(color: Color(0xff00ffff), width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Color(0xfffa1100),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton textStyle"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xff00e9fe),
                          side: BorderSide(color: Color(0xff0ceedc), width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50),
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton Style()"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff00ffff)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff06c6fa)),
                          elevation: MaterialStateProperty.all<double>(20),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(100, 50)),
                          shadowColor: MaterialStateProperty.all<Color>(
                              Color(0xffd01204)),
                          shape: MaterialStateProperty.all<CircleBorder>(
                              CircleBorder()),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(30)),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic))),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text("Boton styleFrom()"),
                      style: TextButton.styleFrom(
                          primary: Color(0xff050505),
                          backgroundColor: Color(0xff00aaff),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Color(0xffff1100),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(30),
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      onPressed: () {},
                    ),
                  ),
                ]),
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
