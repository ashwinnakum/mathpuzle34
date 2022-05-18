import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mathpuzle/gdata.dart';
import 'package:mathpuzle/wining.dart';

class mp2 extends StatefulWidget {
  int ad;

  mp2(this.ad);

  @override
  State<mp2> createState() => _mp2State();
}

class _mp2State extends State<mp2> {
  String da = "my";
  int m = 0, n = 0;

  List<String> ans = [
    "10",
    "25",
    "6",
    "14",
    "128",
    "7",
    "50",
    "1025",
    "100",
    "3",
    "212",
    "3011",
    "14",
    "16",
    "1",
    "2",
    "44",
    "45",
    "625",
    "1",
    "13",
    "47",
    "50",
    "34",
    "6",
    "41",
    "16",
    "126",
    "82",
    "14",
    "7",
    "132",
    "34",
    "48",
    "42",
    "288",
    "45",
    "4",
    "111",
    "47",
    "27",
    "87",
    "22",
    "253",
    "12",
    "38",
    "178",
    "1",
    "6",
    "10",
    "2",
    "20",
    "7",
    "511",
    "143547",
    "84",
    "11",
    "27",
    "3",
    "5",
    "39",
    "31",
    "10",
    "130",
    "22",
    "3",
    "14",
    "42",
    "164045",
    "11",
    "481",
    "86",
    "84",
    "13",
    "8"
  ];
  String a = "";

  @override
  Widget build(BuildContext context) {
    double totalhight = MediaQuery.of(context).size.height;
    double totalwidth = MediaQuery.of(context).size.width;
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
                  InkWell(
                    onTap: () {
                      String str = gdata.statuslist[widget.ad];
                      if (str == "clear") {
                        setState(() {
                          widget.ad++;
                        });
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return mp2(widget.ad);
                          },
                        ));
                      } else {
                        gdata.statuslist[widget.ad] = "skip";
                        gdata.prefs!.setString("status${widget.ad}", "skip");
                        gdata.statuslist[widget.ad + 1] = "skip";
                        gdata.prefs!
                            .setString("status${widget.ad + 1}", "skip");
                        setState(() {
                          widget.ad++;
                        });
                        gdata.prefs!.setInt("cnt", widget.ad);
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return mp2(widget.ad);
                          },
                        ));
                      }

                      // await showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return AlertDialog(
                      //         title: new Text(
                      //           'Skip Level',
                      //           style: TextStyle(fontSize: 25),
                      //         ),
                      //         content: new Text(
                      //           "If you skip this level press skip button",
                      //           style: TextStyle(fontFamily: "Smash"),
                      //         ),
                      //         actions: [
                      //           TextButton(
                      //               onPressed: () {
                      //                 gdata.statuslist[widget.ad] = "skip";
                      //                 gdata.prefs!.setString(
                      //                     "status${widget.ad}", "skip");
                      //                 setState(() {
                      //                   widget.ad++;
                      //                 });
                      //                 gdata.prefs!.setInt("cnt", widget.ad);
                      //                 Navigator.pushReplacement(context,
                      //                     MaterialPageRoute(
                      //                   builder: (context) {
                      //                     return mp2(widget.ad);
                      //                   },
                      //                 ));
                      //
                      //               },
                      //               child: Text(
                      //                 "skip",
                      //                 style: TextStyle(
                      //                     fontSize: 20,
                      //                     color: Colors.red,
                      //                     fontStyle: FontStyle.italic),
                      //               ))
                      //         ],
                      //       );
                      //     });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          totalwidth / 36, totalhight / 53.33333, 0, 0),
                      height: totalhight / 20,
                      width: totalwidth / 9,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("puzle/skip.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(totalwidth / 7.2, 10, 0, 0),
                      height: totalhight / 14.545454,
                      width: totalwidth / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "puzle/level_board.png",
                              ),
                              fit: BoxFit.fill)),
                      child: Center(
                          child: Text(
                        "LEVEL ${widget.ad + 1}",
                        style: TextStyle(
                            fontSize: totalhight / 27.85714,
                            fontFamily: da,
                            fontWeight: FontWeight.bold),
                      ))),
                  // Container(
                  //     margin: EdgeInsets.fromLTRB(totalwidth / 7.2, 10, 0, 0),
                  //     height: totalhight / 14.545454,
                  //     width: totalwidth / 2,
                  //     decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: AssetImage("puzle/level_board.png"),
                  //             fit: BoxFit.fill)),
                  //     child: Center(
                  //         child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemCount: 1,
                  //       itemBuilder: (context, index) {
                  //         return Center(
                  //           child: Center(
                  //             child: Text(
                  //               "     PUZZLE ${widget.ad + 1}",
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(
                  //                   fontSize: totalhight / 27.85714,
                  //                   fontFamily: da,
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ))),
                  Container(
                    margin: EdgeInsets.fromLTRB(totalwidth / 12,
                        totalhight / 53.33333, totalwidth / 36, 0),
                    height: totalhight / 20,
                    width: totalwidth / 9,
                    child: Image.asset(
                      "puzle/hint.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, totalhight / 80, 0, 0),
                width: totalwidth / 1,
                height: totalhight / 2.42424242,
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      height: totalhight / 2.42424242,
                      width: totalwidth / 1,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(("puzle/p${widget.ad + 1}.png")))),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, totalhight / 3.10077519, 0, 0),
                height: totalhight / 8,
                width: totalwidth / 1,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: totalhight / 20,
                          width: totalwidth / 1.56521739,
                          child: Container(
                            child: Center(
                                child: Text(
                              a,
                              style: TextStyle(fontSize: totalhight / 32),
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
                            height: totalhight / 16,
                            width: totalwidth / 7.2,
                            color: Colors.black,
                            margin: EdgeInsets.all(2),
                            child: Image.asset("puzle/delete.png"),
                          ),
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            setState(() {
                              if (a == ans[widget.ad]) {
                                print(gdata.statuslist);
                                String str = gdata.statuslist[widget.ad];
                                if (str == "clear") {
                                  setState(() {
                                    widget.ad++;
                                  });
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return mp3(widget.ad);
                                    },
                                  ));
                                } else if (str == "skip") {
                                  gdata.statuslist[widget.ad] = "clear";
                                  gdata.prefs!
                                      .setString("status${widget.ad}", "clear");
                                  setState(() {
                                    widget.ad++;
                                  });
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return mp3(widget.ad);
                                    },
                                  ));
                                } else {
                                  gdata.statuslist[widget.ad] = "clear";
                                  gdata.prefs!
                                      .setString("status${widget.ad}", "clear");
                                  gdata.prefs!.setInt("cnt", widget.ad);
                                  setState(() {
                                    widget.ad++;
                                  });

                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return mp3(widget.ad);
                                    },
                                  ));
                                }
                              } else {
                                Fluttertoast.showToast(
                                    msg: "Wrong Answer",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 0,
                                    backgroundColor: Colors.grey,
                                    textColor: Colors.white,
                                    fontSize: 18.0);
                                a = "";
                              }
                              // if (a == "") {
                              //   Fluttertoast.showToast(
                              //       msg: "Please Fill answer",
                              //       toastLength: Toast.LENGTH_SHORT,
                              //       gravity: ToastGravity.BOTTOM,
                              //       timeInSecForIosWeb: 0,
                              //       backgroundColor: Colors.grey,
                              //       textColor: Colors.white,
                              //       fontSize: 18.0);
                              // } else if (a == ans[widget.ad]) {
                              //   Navigator.pushReplacement(context,
                              //       MaterialPageRoute(
                              //     builder: (context) {
                              //       widget.ad = widget.ad + 1;
                              //       return mp3(widget.ad);
                              //     },
                              //   ));
                              // }
                              // gdata.prefs?.setInt('counter', widget.ad);
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: da,
                                  fontSize: totalhight / 44.4444),
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
                          height: totalhight / 20,
                          child: Row(
                            children: sum(),
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // children: [sum();
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("1");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "1",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("2");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "2",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("3");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "3",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("4");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "4",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("5");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "5",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("6");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "6",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("7");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "7",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("8");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "8",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("9");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "9",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),
                            // Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         totalwidth / 360, 0, 0, 0),
                            //     height: totalhight / 20.512820,
                            //     width: 35,
                            //     color: Colors.white,
                            //     child: Center(
                            //         child: InkWell(
                            //       onTap: () {
                            //         setState(() {
                            //           ab("0");
                            //         });
                            //       },
                            //       child: Container(
                            //         height: totalhight / 22.857142,
                            //         width: totalwidth / 12,
                            //         color: Colors.grey,
                            //         child: Center(
                            //             child: Text(
                            //           "0",
                            //           style: TextStyle(fontSize: 22),
                            //         )),
                            //       ),
                            //     ))),)
                            // ),
                            // ]
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

  int i = 0;

  void ab(String i) {
    setState(() {
      a = a + i;
    });
  }

  List<Widget> sum() {
    List<Widget> dd = [];
    for (int i = 0; i <= 9; i++) {
      dd.add(Expanded(
          child: InkWell(
        onTap: () {
          setState(() {
            a = "$a$i";
          });
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
            height: 40,
            width: 35,
            color: Colors.black,
            child: Center(
                child: InkWell(
              onTap: () {
                setState(() {
                  a = "$a$i";
                });
              },
              child: Container(
                height: 35,
                width: 33,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.grey, Colors.white])),
                child: Center(
                    child: Text(
                  "$i",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ))),
      )));
    }
    return dd;
  }
}
