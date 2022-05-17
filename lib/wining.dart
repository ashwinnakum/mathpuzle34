import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathpuzle/gdata.dart';
import 'package:mathpuzle/main.dart';
import 'package:mathpuzle/mp2.dart';

class mp3 extends StatefulWidget {
  int ad;

  mp3(this.ad);

  @override
  State<mp3> createState() => _mp3State();
}

class _mp3State extends State<mp3> {
  String da = "my";

  @override
  Widget build(BuildContext context) {
    double totalhight = MediaQuery.of(context).size.height;
    double totalwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF272791),
      body: SafeArea(
          child: Expanded(
        child: Container(
          height: totalhight / 1,
          width: totalwidth / 1,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(totalwidth / 36,
                    totalhight / 26.666666, totalwidth / 36, 00),
                child: Text(
                  "PUZZLE ${widget.ad} COMPLETED",
                  style: TextStyle(
                      color: Color(0xFF272791), fontSize: 23, fontFamily: da),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(totalwidth / 36, 0, totalwidth / 36, 0),
                height: totalhight / 2.8571428,
                width: totalwidth / 1.8,
                child: Image.asset("puzle/trophy.png"),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    gdata.prefs?.setInt('cnt', widget.ad);
                  });
                  gdata.prefs!.setString("status${widget.ad}", "skip");
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return mp2(widget.ad++);
                    },
                  ));
                },
                child: Container(
                  child: Center(
                      child: Text(
                    "CONTINUE",
                    style: TextStyle(fontFamily: da, fontSize: 25),
                  )),
                  margin: EdgeInsets.fromLTRB(0, totalhight / 160, 0, 0),
                  height: totalhight / 16,
                  width: totalwidth / 2,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 00)],
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey,
                          Colors.white,
                          Colors.blueGrey
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              InkWell(
                onTap: () {
                  gdata.prefs?.setInt('cnt', widget.ad);
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return mathpuzzel();
                    },
                  ));
                },
                child: Container(
                  child: Center(
                      child: Text(
                    "MAIN MENU",
                    style: TextStyle(fontFamily: da, fontSize: 25),
                  )),
                  margin: EdgeInsets.fromLTRB(0, totalhight / 53.33333, 0, 0),
                  height: totalhight / 16,
                  width: totalwidth / 2,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 00)],
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey,
                          Colors.white,
                          Colors.blueGrey
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Container(
                child: Center(
                    child: Text(
                  "BUY PRO",
                  style: TextStyle(fontFamily: da, fontSize: 25),
                )),
                margin: EdgeInsets.fromLTRB(0, totalhight / 53.33333, 0, 0),
                height: totalhight / 16,
                width: totalwidth / 2,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 00)],
                    gradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.white, Colors.blueGrey],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, totalhight / 40, 0, 0),
                child: Text(
                  "SHARE THIS PUZZLE",
                  style: TextStyle(
                      color: Color(0xFF272791),
                      fontSize: totalhight / 36.3636363,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(totalhight / 160, totalhight / 160,
                    totalhight / 160, totalhight / 160),
                height: totalhight / 17.77777,
                width: totalwidth / 8,
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
                    height: totalhight / 32,
                    width: totalwidth / 12,
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
