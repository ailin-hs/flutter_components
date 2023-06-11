import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

class SliderViewScreen extends StatefulWidget {
  const SliderViewScreen({super.key});
  _SliderViewScreenState createState() => _SliderViewScreenState();
}

class _SliderViewScreenState extends State<SliderViewScreen> {
  double _value = 1;
  double _value2 = 1;
  double _value3 = 1;
  double _value4 = 1;
  double _value5 = 10;
  double _val = 1;

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
          title: Text('Slider'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Slider(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Container(
                      height: 100,
                      child: Slider(
                        value: _value2,
                        onChanged: (value) {
                          setState(() {
                            _value2 = value;
                          });
                        },
                        min: 1,
                        max: 10,
                        divisions: 10,
                      )),
                  Container(
                      height: 100,
                      child: Slider(
                        value: _value3,
                        onChanged: (value) {
                          setState(() {
                            _value3 = value;
                          });
                        },
                        min: 1,
                        max: 10,
                        activeColor: Color(0xff431acb),
                      )),
                  Container(
                      height: 100,
                      child: Slider(
                        value: _value4,
                        onChanged: (value) {
                          setState(() {
                            _value4 = value;
                          });
                        },
                        min: 1,
                        max: 10,
                        activeColor: Color(0xff60b0ff),
                        inactiveColor: Color(0xffb6d5ff),
                      )),
                  Container(
                      height: 100,
                      child: Slider(
                        value: _value5,
                        onChanged: (value) {
                          setState(() {
                            _value5 = _val;
                          });
                        },
                        min: 0,
                        max: 10,
                        activeColor: Color(0xff6ad36e),
                        inactiveColor: Color(0xffb4d7b5),
                        label: _val.round().toString(),
                        divisions: 10,
                      )),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/slider view.jpeg"),
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
