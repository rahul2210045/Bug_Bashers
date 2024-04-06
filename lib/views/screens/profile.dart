import 'package:bug_basher/main.dart';
import 'package:bug_basher/utils/constants/utilities.dart';
import 'package:bug_basher/views/screens/lanhuage.dart';
import 'package:bug_basher/views/screens/progress.dart';
import 'package:bug_basher/widgets/nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  // late SharedPreferences prefs;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   initSharedPref();
  // }

  // void initSharedPref() async {
  //   prefs = await SharedPreferences.getInstance();
  // }

  // String? name;
  // String? email;

  // Future<void> clearSharedPreferences() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.clear();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [buildheading(context)],
    ));
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Nav(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 22.0,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.29,
              ),
              CustomText(
                text: 'Profile',
                fontStyle: null,
                color: Color(0xFF00184A),
                fontSize: 22,
              ),
            ],
          )),
          SizedBox(
            height: screenHeight * 0.055,
          ),
          Image.asset(
            'assets/images/Account Owner (1).png',
            scale: 4.5,
            // height: screenHeight * 0.032,
          ),
          SizedBox(height: screenHeight * 0.02),
          CustomText(
            // text: prefs.getString('name')?? 'User',
            text: 'User',
            fontStyle: null,
            color: Color(0xFF00184A),
            fontSize: 27,
          ),
          SizedBox(height: screenHeight * 0.01),
          CustomText(
            // text: prefs.getString('email') ?? 'xyz@gmail.com',
            text: 'xyz@gmail.com',
            fontStyle: null,
            color: Color(0xFF323142),
            fontSize: 14,
          ),
          settingBox(
              'assets/images/logOut.png', 'Personal Info', context, profile()),
          settingBox(
              'assets/images/logOut.png', 'Resolved Cases', context, profile()),
          settingBox('assets/images/logOut.png', 'Track Your Application',
              context, Progress1()),
          settingBox(
              'assets/images/logOut.png', 'Language', context, Language2()),
          settingBox(
              'assets/images/logOut.png', 'Financial Education', context, ()),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  // clearSharedPreferences();
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Login()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logOut.png',
                      scale: 4.5,
                      // height: screenHeight * 0.032,
                    ),
                    SizedBox(width: screenWidth * 0.1),
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 18.37,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        // height: 0,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
