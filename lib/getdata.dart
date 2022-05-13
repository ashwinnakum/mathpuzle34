import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  String a = "";
  String b = "";
  SharedPreferences? prefs;
  TextEditingController n1 = TextEditingController();

  @override
  void initState() {
    instant();
    // TODO: implement initState
    super.initState();
  }

  void instant() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
                color: Colors.blue,
                child: TextField(
                  controller: n1,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.purple,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a = n1.text;
                      prefs!.setString('action', a);
                    });
                  },
                  child: Text("Setdata")),
              Container(
                height: 50,
                width: 150,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    "$b",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      b = prefs!.getString('action') ?? "";
                    });

                  },
                  child: Text("Getdata"))
            ],
          )),
    );
  }
}
