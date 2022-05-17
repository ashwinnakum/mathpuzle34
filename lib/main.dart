import 'package:flutter/material.dart';
import 'package:mathpuzle/mp1.dart';
import 'package:mathpuzle/mp2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'gdata.dart';

void main() {
  runApp(MaterialApp(
    home: mathpuzzel(),
  ));
}

class mathpuzzel extends StatefulWidget {
  @override
  State<mathpuzzel> createState() => _mathpuzzelState();
}

class _mathpuzzelState extends State<mathpuzzel> {
  int? ad;

  @override
  void initState() {
    spreferance();
    super.initState();
  }

  bool status = false;

  spreferance() async {
    gdata.prefs = await SharedPreferences.getInstance();
    setState(() {
      ad = gdata.prefs!.getInt('cnt') ?? 0;
    });
    for(int i=0;i<75;i++)
      {
        String levelstatus = gdata.prefs!.getString("status$i")??"pending";
        gdata.statuslist.add(levelstatus);
        print(gdata.statuslist);
      }
    setState(() {
      status = true;
    });

  }

  String da = "my";

  @override
  Widget build(BuildContext context) {
    double totalhight = MediaQuery.of(context).size.height;
    double totalwidth = MediaQuery.of(context).size.width;

    // double statusbarheight = MediaQuery.of(context).padding.top;
    // double navigatorbar = MediaQuery.of(context).padding.bottom;
    // double appbarheight = kToolbarHeight;

    // print("theight==$totalhight,twidth==$totalwidth");

    return status
        ? Scaffold(
            backgroundColor: Color(0xFF272791),
            body: SafeArea(
              child: Container(
                height: totalhight / 1,
                width: totalwidth / 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        height: totalhight / 14,
                        margin: EdgeInsets.fromLTRB(0, totalhight / 20, 0, 0),
                        child: Text(
                          "Math Puzzle",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: da,
                              color: Color(0xFF272791)),
                        ),
                      ),
                    ),
                    Container(
                      height: totalhight / 1.538461538461538,
                      width: totalwidth / 1.058823529411765,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // a++;
                              // setState(() {
                              //   prefs!.setInt('counter', a);
                              // });
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return mp2(ad!);
                                },
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  00, totalhight / 4.166666, 00, 00),
                              height: totalhight / 17.77777,
                              width: totalwidth / 2.4,
                              color: Colors.black,
                              child: Center(
                                  child: Text(
                                "CONTINUE",
                                style: TextStyle(
                                    fontSize: totalhight / 26.666666,
                                    color: Colors.white,
                                    fontFamily: da),
                              )),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return mp1();
                                },
                              ));
                            },
                            child: Container(
                              // margin: EdgeInsets.fromLTRB(totalwidth/7.2, 00, totalwidth/7.2, 00),
                              height: totalhight / 17.77777,
                              width: totalwidth / 2.4,
                              color: Colors.black,
                              child: Center(
                                  child: Text(
                                "PUZZLES",
                                style: TextStyle(
                                    fontSize: totalhight / 26.666666,
                                    color: Colors.white,
                                    fontFamily: da),
                              )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                00, 00, 00, totalhight / 4.166666),
                            height: totalhight / 17.77777,
                            width: totalwidth / 2.4,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "BUY PRO",
                              style: TextStyle(
                                  fontSize: totalhight / 26.666666,
                                  color: Colors.white,
                                  fontFamily: da),
                            )),
                          )
                        ],
                      ),
                      margin: EdgeInsets.fromLTRB(
                          totalwidth / 20, 0, totalwidth / 20, 0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("puzle/blackboard_main_menu.png"),
                              fit: BoxFit.fill)),
                    ),
                    Expanded(
                      child: Container(
                          child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                totalwidth / 12,
                                totalhight / 26.6666,
                                totalwidth / 2.571428,
                                totalhight / 53.3333),
                            height: totalhight / 12.30769,
                            width: totalwidth / 5.53846,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("puzle/ltlicon.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(00, totalhight / 35,
                                totalwidth / 18, totalhight / 80),
                            child: Column(
                              children: [
                                Container(
                                  height: totalhight / 16.047619,
                                  width: totalwidth / 3.6,
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              totalwidth / 72,
                                              totalhight / 160,
                                              totalwidth / 72,
                                              totalhight / 160),
                                          height: totalhight / 20,
                                          width: totalwidth / 9,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Colors.grey,
                                                Colors.white
                                              ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Icon(Icons.share)),
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.email)),
                                        margin: EdgeInsets.fromLTRB(
                                            totalwidth / 72,
                                            totalhight / 160,
                                            totalwidth / 72,
                                            totalhight / 160),
                                        height: totalhight / 20,
                                        width: totalwidth / 9,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Colors.grey,
                                              Colors.white
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child:
                                          Center(child: Text("Privacy Policy")),
                                      height: totalhight / 26.6666,
                                      width: totalwidth / 3.6,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                      ),
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
                        image: AssetImage("puzle/background.jpg"),
                        fit: BoxFit.fill)),
              ),
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
