import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mp3 extends StatefulWidget {
  @override
  State<mp3> createState() => _mp3State();
}

class _mp3State extends State<mp3> {
  String da = "my";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272791),
      body: SafeArea(
          child: Expanded(
        child: Container(
          height: 800,
          width: 400,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 30, 10, 00),
                child: Text(
                  "PUZZLE __ COMPLETED",
                  style: TextStyle(
                      color: Color(0xFF272791), fontSize: 23, fontFamily: da),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 280,
                width: 200,
                child: Image.asset("puzle/trophy.png"),
              ),
              Container(
                child: Center(
                    child: Text(
                  "CONTINUE",
                  style: TextStyle(fontFamily: da, fontSize: 25),
                )),
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 00)],
                    gradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.white, Colors.blueGrey],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                child: Center(
                    child: Text(
                  "MAIN MENU",
                  style: TextStyle(fontFamily: da, fontSize: 25),
                )),
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 00)],
                    gradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.white, Colors.blueGrey],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                child: Center(
                    child: Text(
                  "BUY PRO",
                  style: TextStyle(fontFamily: da, fontSize: 25),
                )),
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 00)],
                    gradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.white, Colors.blueGrey],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "SHARE THIS PUZZLE",
                  style: TextStyle(
                      color: Color(0xFF272791),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.blueGrey]),
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.blueGrey])),
                    height: 25,
                    width: 30,
                    child: Image.asset("puzle/shareus.png"),
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("puzle/background.jpg"), fit: BoxFit.fill)),
        ),
      )),
    );
  }
}
