import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathpuzle/gdata.dart';
import 'package:mathpuzle/main.dart';
import 'package:mathpuzle/mp2.dart';

class mp1 extends StatefulWidget {
  @override
  State<mp1> createState() => _mp1State();
}

class _mp1State extends State<mp1> {
  String da = "my";

  @override
  Widget build(BuildContext context) {
    double totalhight = MediaQuery.of(context).size.height;
    double totalwidth = MediaQuery.of(context).size.width;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: Color(0xFF272791),
          body: SafeArea(
              child: Expanded(
                  child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(80, 0, 50, 0),
                      child: Text(
                        "Select Puzzle",
                        style: TextStyle(
                            fontSize: totalhight / 20,
                            fontFamily: da,
                            color: Color(0xFF272791)),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return mathpuzzel();
                            },
                          ));
                        },
                        child: Icon(Icons.home))
                  ],
                ),
                Container(
                  height: totalhight / 1.28,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemCount: gdata.statuslist.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      String ll = gdata.statuslist[index];
                      int abc = gdata.prefs!.getInt("cnt") ?? 0;
                      if (ll == "clear") {
                        return InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return mp2(index);
                              },
                            ));
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              "${index + 1}",
                              style: TextStyle(fontSize: 55, fontFamily: da),
                            )),
                            margin: EdgeInsets.fromLTRB(
                                totalwidth / 60,
                                totalhight / 120,
                                totalwidth / 60,
                                totalhight / 120),
                            height: totalhight / 16,
                            width: totalwidth / 6.5,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF272791),
                                ),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("puzle/tick.png"),
                                    fit: BoxFit.fill)),
                          ),
                        );
                      } else if (ll == "skip") {
                        return InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return mp2(index);
                              },
                            ));
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              "${index + 1}",
                              style: TextStyle(fontSize: 55, fontFamily: da),
                            )),
                            margin: EdgeInsets.fromLTRB(
                                totalwidth / 60,
                                totalhight / 120,
                                totalwidth / 60,
                                totalhight / 120),
                            height: totalhight / 16,
                            width: totalwidth / 6.5,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF272791),
                                ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        );
                      } else {
                        if (abc == index) {
                          return InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return mp2(index);
                                  },
                                ));
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    totalwidth / 120,
                                    totalhight / 266.6666666,
                                    totalwidth / 120,
                                    totalhight / 266.6666666),
                                height: totalhight / 18,
                                width: totalwidth / 6.5,
                                child: Center(
                                    child: Text(
                                  "${index + 1}",
                                  style:
                                      TextStyle(fontSize: 55, fontFamily: da),
                                )),
                              ));
                        } else {
                          return Container(
                            margin: EdgeInsets.fromLTRB(
                                totalwidth / 120,
                                totalhight / 266.6666666,
                                totalwidth / 120,
                                totalhight / 266.6666666),
                            height: totalhight / 18,
                            width: totalwidth / 6.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("puzle/lock.png"),
                                    fit: BoxFit.fill)),
                          );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("puzle/background.jpg"),
                    fit: BoxFit.fill)),
          ))),
        ),
        onWillPop: onWill);
  }

  Future<bool> onWill() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return mathpuzzel();
      },
    ));
    return Future.value(true);
  }
}
