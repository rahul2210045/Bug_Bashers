import 'dart:io';

import 'package:bug_basher/views/screens/Login.dart';
import 'package:bug_basher/views/screens/chatbot.dart';
import 'package:bug_basher/views/screens/features.dart';
import 'package:bug_basher/views/screens/home.dart';
import 'package:bug_basher/views/screens/otp.dart';
import 'package:bug_basher/views/screens/payment.dart';
import 'package:bug_basher/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferencesManager.init(); //
  HttpClient httpClient = new HttpClient()
    ..badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      // initialRoute: 'subject_wise_attendance',
      routes: {
        'splashscreen': (context) => SplashScreen(),
        'login': (context) => Login(),
        'home': (context) => const home(),
         'payment': (context) => const Payment(),
         'chatbot': (context) => cyberMitr(),
          'otp': (context) => otpVerification(),
           'features': (context) => Features(),

        // 'login': (context) => Login(),
        // // 'overallattendance':(context)=>OverAllAttd(),
        // 'timetable':(context) => ExamTimetableScreen(),
        // 'profile':(context) => Profile(),
        // //  'profileinfo':(context) => profileInfo(),

        // 'personalinfo':(context) => PersonalInfoScreen(),
        // 'subject_wise_attendance':(context) => barGraph(userName: "user",userImage: "vgc",subjectDescription: "your attendance is good",subjectName: "mathematics",),
      },
    );
  }
}

class PreferencesManager {
  static late PreferencesManager _instance;
  late SharedPreferences _prefs;

  // private constructor
  PreferencesManager._();

  // factory method to access the singleton instance
  factory PreferencesManager() {
    return _instance;
  }

  // initialize the singleton instance
  static Future<void> init() async {
    _instance = PreferencesManager._();
    _instance._prefs = await SharedPreferences.getInstance();
  }

  // add methods for storing and retrieving data
  String get email => _prefs.getString('email') ?? '';
  set email(String value) => _prefs.setString('email', value);

  String get name => _prefs.getString('name') ?? '';
  set name(String value) => _prefs.setString('name', value);
  String get token => _prefs.getString('token') ?? '';
  set token(String value) => _prefs.setString('token', value);
  String get ack => _prefs.getString('ack') ?? '';
  set ack(String value) => _prefs.setString('ack', value);



  // add more methods as needed
}
