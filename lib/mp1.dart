import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathpuzle/gdata.dart';
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

    return Scaffold(
      backgroundColor: Color(0xFF272791),
      body: SafeArea(
          child: Expanded(
              child: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                "Select Puzzle",
                style: TextStyle(
                    fontSize: totalhight / 20,
                    fontFamily: da,
                    color: Color(0xFF272791)),
              ),
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
                      onTap:() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return mp2(index);
                        },));
                      },child: Container(
                        child: Center(
                            child: Text(
                          "${index + 1}",
                          style: TextStyle(fontSize: 55, fontFamily: da),
                        )),
                        margin: EdgeInsets.fromLTRB(totalwidth / 60,
                            totalhight / 120, totalwidth / 60, totalhight / 120),
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
                    return InkWell(onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return mp2(index);
                      },));
                    },
                      child: Container(
                        child: Center(
                            child: Text(
                          "${index + 1}",
                          style: TextStyle(fontSize: 55, fontFamily: da),
                        )),
                        margin: EdgeInsets.fromLTRB(totalwidth / 60,
                            totalhight / 120, totalwidth / 60, totalhight / 120),
                        height: totalhight / 16,
                        width: totalwidth / 6.5,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF272791),
                            ),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    );
                  }
                  else {
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

                  return InkWell(
                    onTap: () {},
                  );
                },
              ),
            ),
            // Container(
            //   child: Row(
            //     children: [
            //       InkWell(
            //         onTap: () {
            //           Navigator.pushReplacement(context, MaterialPageRoute(
            //             builder: (context) {
            //               return next1();
            //             },
            //           ));
            //         },
            //         child: Container(
            //           margin: EdgeInsets.fromLTRB(totalwidth / 1.25,
            //               totalhight / 80, totalwidth / 36, totalhight / 80),
            //           height: totalhight / 16,
            //           width: totalwidth / 7.2,
            //           decoration: BoxDecoration(
            //               image: DecorationImage(
            //                   image: AssetImage("puzle/next.png"),
            //                   fit: BoxFit.fill)),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("puzle/background.jpg"), fit: BoxFit.fill)),
      ))),
    );
  }
}

// class next1 extends StatefulWidget {
//   @override
//   State<next1> createState() => _next1State();
// }
//
// class _next1State extends State<next1> {
//   String da = "my";
//
//   @override
//   Widget build(BuildContext context) {
//     double totalhight = MediaQuery.of(context).size.height;
//     double totalwidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color(0xFF272791),
//       body: SafeArea(
//           child: Expanded(
//               child: Container(
//         child: Column(
//           children: [
//             Container(
//               child: Text(
//                 "Select Puzzle",
//                 style: TextStyle(
//                     fontSize: totalhight / 20,
//                     fontFamily: da,
//                     color: Color(0xFF272791)),
//               ),
//             ),
//             Container(
//               height: totalhight / 1.28,
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4),
//                 itemCount: 28,
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: EdgeInsets.fromLTRB(
//                         totalwidth / 120,
//                         totalhight / 266.6666666,
//                         totalwidth / 120,
//                         totalhight / 266.6666666),
//                     height: totalhight / 16,
//                     width: totalwidth / 6.5,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("puzle/lock.png"),
//                             fit: BoxFit.fill)),
//                   );
//                 },
//               ),
//             ),
//             Container(
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushReplacement(context, MaterialPageRoute(
//                         builder: (context) {
//                           return mp1();
//                         },
//                       ));
//                     },
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(totalwidth / 9.5,
//                           totalhight / 80, totalwidth / 36, totalhight / 80),
//                       height: totalhight / 16,
//                       width: totalwidth / 7.2,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage("puzle/back.png"),
//                               fit: BoxFit.fill)),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushReplacement(context, MaterialPageRoute(
//                         builder: (context) {
//                           return next2();
//                         },
//                       ));
//                     },
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(totalwidth / 2,
//                           totalhight / 80, totalwidth / 36, totalhight / 80),
//                       height: totalhight / 16,
//                       width: totalwidth / 7.2,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage("puzle/next.png"),
//                               fit: BoxFit.fill)),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("puzle/background.jpg"), fit: BoxFit.fill)),
//       ))),
//     );
//   }
// }
//
// class next2 extends StatefulWidget {
//   @override
//   State<next2> createState() => _next2State();
// }
//
// class _next2State extends State<next2> {
//   String da = "my";
//
//   @override
//   Widget build(BuildContext context) {
//     double totalhight = MediaQuery.of(context).size.height;
//     double totalwidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color(0xFF272791),
//       body: SafeArea(
//           child: Expanded(
//               child: Container(
//         child: Column(
//           children: [
//             Container(
//               child: Text(
//                 "Select Puzzle",
//                 style: TextStyle(
//                     fontSize: totalhight / 20,
//                     fontFamily: da,
//                     color: Color(0xFF272791)),
//               ),
//             ),
//             Container(
//               height: totalhight / 1.454545,
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4),
//                 itemCount: 19,
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: EdgeInsets.fromLTRB(
//                         totalwidth / 120,
//                         totalhight / 266.6666666,
//                         totalwidth / 120,
//                         totalhight / 266.6666666),
//                     height: totalhight / 16,
//                     width: totalwidth / 6.5,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("puzle/lock.png"),
//                             fit: BoxFit.fill)),
//                   );
//                 },
//               ),
//             ),
//             Container(
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushReplacement(context, MaterialPageRoute(
//                         builder: (context) {
//                           return next1();
//                         },
//                       ));
//                     },
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(
//                           totalwidth / 9,
//                           totalhight / 11.428571,
//                           totalwidth / 36,
//                           totalhight / 80),
//                       height: totalhight / 16,
//                       width: totalwidth / 7.2,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage("puzle/back.png"),
//                               fit: BoxFit.fill)),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("puzle/background.jpg"), fit: BoxFit.fill)),
//       ))),
//     );
//   }
// }
