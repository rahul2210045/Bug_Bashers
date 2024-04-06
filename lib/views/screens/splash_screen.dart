import 'dart:async';
// import 'package:edumarshals/Screens/Attendance/OverAllAttendance.dart';

import 'package:bug_basher/main.dart';
import 'package:bug_basher/views/screens/intro_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

// import 'sp';
String finalname = '';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // // TODO: implement initState
    // getvalidationdata().whenComplete(() async {
    //   Timer(const Duration(seconds: 3), () {
    //     // Navigator.pop(context, MaterialPageRoute(builder: (context) => finalname==null?Login(): Homepage()));
    //     // Navigator.push(
    //     //     context, MaterialPageRoute(builder: (context) => const Login()));
    //   });
    // });
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Intro_Screen()));
    });
  }

  Future getvalidationdata() async {
    var obname = PreferencesManager().name;
    setState(() {
      finalname = obname;
    });
    print(finalname);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logos/Frame 13225.png',
                  width: 32,
                  height: 48,
                ),
                Text(
                  '  GraminFinance',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.001,
            ),
          ],
        )));
  }
}
