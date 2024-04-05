// import 'dart:io';
import 'package:bug_basher/views/screens/QR.dart';
import 'package:bug_basher/views/screens/cards.dart';
import 'package:bug_basher/views/screens/intro_screen.dart';
import 'package:bug_basher/views/screens/loan.dart';
import 'package:bug_basher/views/screens/profile.dart';
import 'package:bug_basher/views/screens/progress.dart';
import 'package:bug_basher/widgets/nav.dart';
import 'dart:io';
import 'package:bug_basher/views/screens/Login.dart';
import 'package:bug_basher/views/screens/home.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:bug_basher/views/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await PreferencesManager.init(); //
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
      initialRoute: 'cards',
      routes: {
        'splash': (context) => SplashScreen(),
        'intro': (context) => Intro_Screen(),
        'nav': (context) => Nav(),
        'home': (context) => home(),
        'login': (context) => Login(),
        'loan': (context) => Loan(),
        'profile': (context) => Profile(),
        'progress': (context) => Progress(),
        'cards': (context) => Cards(),
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
  String get studentPhoto => _prefs.getString('studentPhoto') ?? '';
  set studentPhoto(String value) => _prefs.setString('studentPhoto', value);
  String get studentNumber => _prefs.getString('studentNumber') ?? '';
  set studentNumber(String value) => _prefs.setString('studentNumber', value);
  String get universityRollNumber =>
      _prefs.getString('universityRollNumber') ?? '';
  set universityRollNumber(String value) =>
      _prefs.setString('universityRollNumber', value);
  String get dob => _prefs.getString('dob') ?? '';
  set dob(String value) => _prefs.setString('dob', value);
  int get totalclasses => _prefs.getInt('totalclasses') ?? 0;
  set totalclasses(int value) => _prefs.setInt('totalclasses', value);

  int get presentclasses => _prefs.getInt('presentclasses') ?? 0;
  set presentclasses(int value) => _prefs.setInt('presentclasses', value);

  // add more methods as needed
}
