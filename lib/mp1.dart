import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mp1 extends StatefulWidget {
  @override
  State<mp1> createState() => _mp1State();
}

class _mp1State extends State<mp1> {
  String da = "my";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Expanded(
              child: Container(
        height: 800,
        width: 2000,
        child: Column(
          children: [
            Container(
              child: Text(
                "Select Puzzle",
                style: TextStyle(
                    fontSize: 40, fontFamily: da, color: Color(0xFF272791)),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("puzle/background.jpg"), fit: BoxFit.fill)),
      ))),
    );
  }
}
