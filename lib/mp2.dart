import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathpuzle/mp3.dart';

class mp2 extends StatefulWidget {
  @override
  State<mp2> createState() => _mp2State();
}

class _mp2State extends State<mp2> {
  String da = "my";

  String a = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272791),
      body: SafeArea(
          child: Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("puzle/skip.png"),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      height: 55,
                      width: 180,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("puzle/level_board.png"),
                              fit: BoxFit.fill)),
                      child: Center(
                          child: Text(
                        "PUZZLE 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: da,
                            fontWeight: FontWeight.bold),
                      ))),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 15, 10, 0),
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "puzle/hint.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 360,
                height: 330,
                child: Image.asset("puzle/p1.png"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 258, 0, 0),
                height: 100,
                width: 360,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 230,
                          child: Container(
                            child: Center(
                                child: Text(
                              a,
                              style: TextStyle(fontSize: 25),
                            )),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              a = a.substring(0, a.length - 1);
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Colors.black,
                            margin: EdgeInsets.all(2),
                            child: Image.asset("puzle/delete.png"),
                          ),
                        ),
                        Expanded(
                            child: InkWell(onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                return mp3();
                              },));
                            },
                              child: Container(
                          child: Center(
                                child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: da,
                                  fontSize: 18),
                          )),
                        ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.black,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("1");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "1",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("2");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "2",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("3");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "3",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("4");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "4",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("5");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "5",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("6");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "6",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("7");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "7",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("8");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "8",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("9");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "9",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  height: 39,
                                  width: 35,
                                  color: Colors.white,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ab("0");
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 30,
                                      color: Colors.grey,
                                      child: Center(
                                          child: Text(
                                        "0",
                                        style: TextStyle(fontSize: 22),
                                      )),
                                    ),
                                  ))),
                            ],
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("puzle/gameplaybackground.jpg"),
                  fit: BoxFit.fill)),
        ),
      )),
    );
  }

  String firstdata = "";

  void ab(String value) {
    setState(() {
      a = a + value;
    });
  }
}
