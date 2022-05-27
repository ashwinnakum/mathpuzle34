import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class booll extends StatefulWidget {
  @override
  State<booll> createState() => _boollState();
}

class _boollState extends State<booll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            margin: EdgeInsets.all(100),
          ),
          ElevatedButton(onPressed: () {}, child: Text("set data")),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            margin: EdgeInsets.all(100),
          ),
          ElevatedButton(onPressed: () {}, child: Text("get data")),
        ],
      )),
    );
  }
}
