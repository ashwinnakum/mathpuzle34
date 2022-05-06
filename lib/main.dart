import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mathpuzle/mp1.dart';

void main() {
  runApp(MaterialApp(
    home: mathpuzzel(),
    showSemanticsDebugger: false,
  ));
}

class mathpuzzel extends StatefulWidget {
  const mathpuzzel({Key? key}) : super(key: key);

  @override
  State<mathpuzzel> createState() => _mathpuzzelState();
}

class _mathpuzzelState extends State<mathpuzzel> {
  String da = "my";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272791),
      body: SafeArea(
        child: Container(
          height: 800,
          width: 2000,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 50, 50, 16),
                child: Text(
                  "Math Puzzle",
                  style: TextStyle(
                      fontSize: 40, fontFamily: da, color: Color(0xFF272791)),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return mp1();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 190, 50, 00),
                        height: 45,
                        width: 120,
                        color: Colors.black,
                        child: Center(
                            child: Text(
                              "CONTINUE",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white),
                            )),
                      ),
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return mp1();
                      },));
                    },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 00, 50, 00),
                        height: 45,
                        width: 120,
                        color: Colors.black,
                        child: Center(
                            child: Text(
                              "PUZZLES",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 00, 50, 50),
                      height: 45,
                      width: 120,
                      color: Colors.black,
                      child: Center(
                          child: Text(
                            "BUY PRO",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          )),
                    )
                  ],
                ),
                height: 520,
                width: 350,
                margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("puzle/blackboard_main_menu.png"),
                        fit: BoxFit.fill)),
              ),
              Expanded(
                child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 30, 140, 15),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("puzle/ltlicon.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(00, 20, 20, 10),
                          child: Column(
                            children: [
                              Container(
                                height: 42,
                                width: 100,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 40,
                                      width: 38,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Container(
                                          height: 20,
                                          width: 25,
                                          child: Image.asset(
                                              "puzle/shareus.png"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 40,
                                      width: 38,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          child: Image.asset(
                                              "puzle/emailus.png"),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Center(
                                        child: Text("Privacy Policy")),
                                    height: 30,
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    width: 100,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //Container(child: Container(height: 10,width: 10,color: Colors.blue,margin: EdgeInsets.fromLTRB(2, 80, 10, 0)),)
                      ],
                    )),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("puzle/background.jpg"), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
