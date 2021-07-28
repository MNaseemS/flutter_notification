import 'package:flutter/material.dart';

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
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: new Text("Alert", style: TextStyle(color: Colors.white)),
        leading: IconButton(
            onPressed: null, icon: new Icon(Icons.menu, color: Colors.white)),
      ),
      backgroundColor: Color(0xFF303030),
      body: new Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.6,
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.notifications),
                Text("1", style: TextStyle(color: Colors.black)),
                Row(children: <Widget>[
                  Text("Push notifications"),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.grey.shade200,
                    activeColor: Colors.grey.shade400,
                  )
                ]),
                Row(children: <Widget>[
                  Text("Email notifications"),
                  Switch(
                    value: isSwitched2,
                    onChanged: (value) {
                      setState(() {
                        isSwitched2 = value;
                      });
                    },
                    activeTrackColor: Colors.grey.shade200,
                    activeColor: Colors.grey.shade400,
                  )
                ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(onPressed: null, child: Text("Show"))
                    ])
              ])),
    );
  }
}