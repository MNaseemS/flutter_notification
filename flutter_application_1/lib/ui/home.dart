import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      extendBodyBehindAppBar: true,
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: new Text("Alert", style: TextStyle(color: Colors.white)),
        leading: IconButton(
            onPressed: () {}, icon: new Icon(Icons.menu, color: Colors.white)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Color(0xFF3B3B3B)])),
              alignment: Alignment(0, -0.6),
              child: new Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.925,
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Spacer(),
                        Flexible(
                          flex: 6,
                          child: Container(
                              alignment: Alignment.center,
                              decoration: new BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  shape: BoxShape.circle),
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Spacer(),
                                  Image(
                                      image: AssetImage(
                                          "images/new_notification.png")),
                                  Spacer(),
                                  Text("01",
                                      style: TextStyle(color: Colors.black)),
                                  Spacer(),
                                ],
                              )),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Spacer(),
                                Text("Push notifications"),
                                Spacer(flex: 6),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                    });
                                  },
                                  inactiveTrackColor: Color(0xFFE5E5E5),
                                  inactiveThumbColor: Colors.grey.shade400,
                                  activeTrackColor: Colors.grey.shade400,
                                  activeColor: Color(0xFFE5E5E5),
                                ),
                                Spacer(),
                              ]),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Spacer(),
                                Text("Email notifications"),
                                Spacer(flex: 6),
                                Switch(
                                  value: isSwitched2,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched2 = value;
                                    });
                                  },
                                  inactiveTrackColor: Color(0xFFE5E5E5),
                                  inactiveThumbColor: Colors.grey.shade400,
                                  activeTrackColor: Colors.grey.shade400,
                                  activeColor: Color(0xFFE5E5E5),
                                ),
                                Spacer(),
                              ]),
                        ),
                        Spacer(),
                        Flexible(
                            flex: 1,
                            child: SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Color(0xFFF5F5F5)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("SHOW",
                                          style:
                                              TextStyle(color: Colors.black))),
                                )))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.transparent),
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 59),
                      Row(
                        children: <Widget>[
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Back",
                                style: TextStyle(color: Colors.white),
                              )),
                          Spacer(flex: 14)
                        ],
                      ),
                      Spacer()
                    ],
                  )))
        ],
      ),
    );
  }
}
