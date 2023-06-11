import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
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
          title: Text('Switch'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value2,
                      onChanged: (value) {
                        setState(() {
                          _value2 = value;
                        });
                      },
                      activeColor: Color(0xff01eeff),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value3,
                      onChanged: (value) {
                        setState(() {
                          _value3 = value;
                        });
                      },
                      activeColor: Color(0xff01a2ff),
                      activeTrackColor: Color(0xff01eeff),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value4,
                      onChanged: (value) {
                        setState(() {
                          _value4 = value;
                        });
                      },
                      activeColor: Color(0xff008dff),
                      activeTrackColor: Color(0xff01eeff),
                      inactiveThumbColor: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value5,
                      onChanged: (value) {
                        setState(() {
                          _value5 = value;
                        });
                      },
                      activeColor: Color(0xff89ff00),
                      activeTrackColor: Color(0xff01eeff),
                      inactiveTrackColor: Color(0x0c000000),
                      inactiveThumbColor: Color(0xffffffff),
                    ),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/switch.jpeg"),
                  Text("Codigo"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
