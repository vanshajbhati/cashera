import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home_page.dart';
import 'SignIn_With.dart';
import 'welcome.dart';
import 'dart:async';
class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}
class _LoadState extends State<Load> {
  String userkey;
  bool auth;

  @override
  getBoolValuesSF() async {
    setState(() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Welcome()));
    });
  }
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), ()=>getBoolValuesSF());

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Image(image: AssetImage('assets/splesh.jpg'),width: 70,fit: BoxFit.fill,)
    );
  }
}