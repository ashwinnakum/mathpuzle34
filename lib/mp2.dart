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
                      setState(() {
                        if (str == "clear") {
                          setState(() {
                            widget.ad++;
                          });
                          gdata.prefs!.setInt("cnt", widget.ad);
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return mp2(widget.ad);
                            },
                          ));
                        } else {
                          gdata.statuslist[widget.ad] = "skip";
                          gdata.prefs!.setString("status${widget.ad}", "skip");
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
                      });
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
                        "PUZZLE ${widget.ad + 1}",
                        style: TextStyle(
                            fontSize: totalhight / 27.85714,
                            fontFamily: da,
                            fontWeight: FontWeight.bold),
                      ))),
                  InkWell(
                    onTap: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: new Text(
                                'Hint',
                                style: TextStyle(fontSize: 25),
                              ),
                              content: new Text(
                                ans[widget.ad],
                                style: TextStyle(fontFamily: "Smash"),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "ok",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.red,
                                          fontStyle: FontStyle.italic),
                                    ))
                              ],
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(totalwidth / 12,
                          totalhight / 53.33333, totalwidth / 36, 0),
                      height: totalhight / 20,
                      width: totalwidth / 9,
                      child: Image.asset(
                        "puzle/hint.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, totalhight / 80, 0, 0),
                width: totalwidth / 1,
                height: totalhight / 2.42424242,
                child: PageView.builder(
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
                                String str = gdata.statuslist[widget.ad];
                                print(str);
                                if (str == "clear") {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      widget.ad++;
                                      gdata.prefs!.setInt("cnt", widget.ad);
                                      return mp3(widget.ad);
                                    },
                                  ));
                                } else if (str == "skip") {
                                  gdata.statuslist[widget.ad] = "clear";
                                  gdata.prefs!
                                      .setString("status${widget.ad}", "clear");
                                  print(gdata.statuslist);
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
                                  setState(() {
                                    widget.ad++;
                                  });
                                  gdata.prefs!.setInt("cnt", widget.ad);
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return mp3(widget.ad-1);
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
  //
  // void ab(String i) {
  //   setState(() {
  //     a = a + i;
  //   });
  // }

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
