import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Beautiful Bottom Navigation Bar',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int appCurrIndex = 0;
  List<Icon> iconsList = [
    Icon(Icons.notifications),
    Icon(Icons.cake),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];
  List<Widget> bodyData = [
    Center(
      child: Text("Notifications"),
    ),
    Center(
      child: Text("Birthday Cake"),
    ),
    Center(
      child: Text("Person"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List<IconButton>.generate(4, (int i) {
                  return IconButton(
                    color: i == appCurrIndex ? Colors.white : Colors.white60,
                    icon: iconsList[i],
                    iconSize: 30.0,
                    onPressed: () {
                      setState(() {
                        appCurrIndex = i;
                      });
                    },
                  );
                }))),
        body: Container(
          child: bodyData[appCurrIndex],
        ));
  }
}
