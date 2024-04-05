import 'dart:convert';

import 'package:bug_basher/main.dart';
import 'package:bug_basher/views/screens/chatbot.dart';
import 'package:bug_basher/views/screens/features.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pinput/pinput.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController search = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  bool isChecked = false;
  bool _isLoading = false;

  Future<void> saveotp() async {
    setState(() {
      _isLoading = true;
    });
    final url = Uri.https('banking-management.onrender.com', '/v1/user/login');

    final Map<String, String> requestBody = {
      'mpin': _otpController.text,
      'userName': PreferencesManager().email,
    };

    try {
      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );
      // PreferencesManager().email=_usernameController as String;

      //
      print(response.statusCode);
      if (response.statusCode == 200) {
        dynamic setCookieHeader = response.headers['set-cookie'];

        List<String>? cookies;
        // print(response.Cookies);
        print('Response headers: ${response.headers}');
        print('Cookies from response: ${response.headers['set-cookie']}');

        if (setCookieHeader is String) {
          cookies = [setCookieHeader];
        } else if (setCookieHeader is List<String>) {
          cookies = setCookieHeader;
        } else {
          cookies = [];
        }

        print('Response Headers: $setCookieHeader');

        String accessToken = '';
        // String

        if (cookies.isNotEmpty) {
          accessToken = cookies
              .map((cookie) => cookie.split(';').first)
              .firstWhere((value) => value.startsWith('accessToken='),
                  orElse: () => '');
        }
        String actualAccessToken = accessToken.substring("accesstoken=".length);

        print('Access Token from Cookie: $actualAccessToken');
        PreferencesManager().token = actualAccessToken;

        if (actualAccessToken.isNotEmpty) {
          // prefs.setString('token', actualAccessToken);
          print('Token stored in prefs: $actualAccessToken');
        } else {
          // Handle the case where the token is empty
          print('Token is empty');
        }

        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];
        // final name = responseData['name'];

        print('Message from API: $message');
        // print('Message from API: $name');

        // PreferencesManager().name = name;
        // Update UI to show success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );

        setState(() {
          _isLoading = false;
        });
        // for navigaation to next page
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home()));
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) =>
        //           otpVerification(email: _emailController.text),
        //     ));
      } else {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];
        print('Failed: $message');
        // Update UI to show success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
        // print('Failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        _isLoading = false;
      });
    }
    // if (isChecked) {
    //   final prefs = await SharedPreferences.getInstance();
    //   prefs.setString('username', _usernameController.text);
    //   prefs.setString('ot', _passController.text);
    // }
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 60,
        height: 60,
        textStyle: TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Color(0xFFC2C3CB), width: 1.5)));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),

            Container(
              padding: EdgeInsets.all(10),
              // width: 360,
              // height: 216,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Image.asset("assets/images/Frame 13225.png"),
                      Padding(padding: EdgeInsets.only(right: 15)),
                      Text(
                        "Gramin Finance",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      )
                      // CircleAvatar(backgroundImage: AssetImage("assets/images/Frame 13225.png"),),
                      // Padding(padding: EdgeInsets.all(10)),

                      // Column(
                      //   children: [
                      //     Text(
                      //       "HELLO USER",
                      //       style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      //     ),
                      //       Text(
                      //       "Vidhi Gupta",
                      //       style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      //     ),
                      //   ],
                      // ),
                      //  Spacer(),
                      // Icon(
                      //   Icons.notifications,
                      //   size: 20,
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 1 (1).png"),
                        radius: 20,
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Column(
                        children: [
                          Text(
                            "HELLO USER",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 10),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Pranjal...",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications,
                        size: 20,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(219, 235, 250, 255),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const TextField(
                      // controller: ser,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Pay by name or phone number',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(128, 128, 128, 1),
                            fontSize: 12),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // Image.asset(
            //     //   "assests/images/icon1.jpeg",
            //     //   width: 20,
            //     // ),
            //     Container(
            //       width: 80,
            //       height: 80,
            //       color: const Color.fromRGBO(238, 246, 247, 1),
            //       child: Image.asset("assests/images/icon1.jpeg"),
            //       // child: Text("he"),
            //     ),
            //     Container(
            //       width: 80,
            //       height: 80,
            //       color: const Color.fromRGBO(238, 246, 247, 1),
            //       // child: Text("he"),
            //       child: Image.asset("assests/images/icon2.jpeg"),
            //     ),
            //     Container(
            //       width: 80,
            //       height: 80,
            //       color: const Color.fromRGBO(238, 246, 247, 1),
            //       child: Image.asset("assests/images/icon3.jpeg"),
            //       // child: Text("he"),
            //     ),
            //     Container(
            //       width: 80,
            //       height: 80,
            //       color: const Color.fromRGBO(238, 246, 247, 1),
            //       // child: Text("he"),
            //       child: Image.asset("assests/images/icon4.jpeg"),
            //     )
            //   ],
            // ),
            Container(
              padding: const EdgeInsets.all(20),
// color: Colors.amber,
              // height: 200,
              // width: 300,
              child: Image.asset('assets/images/image 26.png'),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Good Afternoon, ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 50,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> cyberMitr()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      "assets/images/image 35 (1).png", // Replace with your image path
                      width: 50,
                      height: 50,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                // SizedBox(height: 20,),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "VIDHI GUPTA...",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Please enter 4 digit MPIN",
                  style: TextStyle(fontSize: 15),
                ),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!
                      .copyWith(border: Border.all(color: Color(0xFFC2C3CB)))),
              controller: _otpController,
            ),
            SizedBox(
              height: 20,
            ),

            // adding mpin otp
             Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
               ElevatedButton(
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Features()));
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: const Color.fromRGBO(36, 107, 253, 1), // Text color
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Padding
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Border radius
    textStyle: TextStyle(fontSize: 15), // Text style
    elevation: 4, // Elevation
    // Add more properties as needed
  ),
  child: Text("Submit"),
)

                // Textbutton(
                //   chil
                //   style: TextStyle(fontSize: 15),
                // ),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                    child: Image.asset("assets/images/Frame 48084 (1).png"))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //             const Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   // crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Padding(padding: EdgeInsets.all(10)),
            //     Text(
            //       "Government schemes",
            //       style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
            //     ),
            //     // Text(
            //     //   "SEE ALL",
            //     //   style: TextStyle(color: Colors.blue),
            //     // )
            //   ],
            // ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Column(
            //       children: [
            //         Stack(
            //           children: [
            //             Container(
            //               color: const Color.fromRGBO(238, 246, 247, 1),
            //               child: Image.asset(
            //                 'assets/images/image 26.png',
            //                 width: 150,
            //                 height: 100,
            //                 // fit: BoxFit.cover,
            //               ),
            //             ),
            //           ],
            //         ),

            //         // ignore: avoid_unnecessary_containers
            //         Column(
            //           children: [
            //             Container(
            //               child: const Text(
            //                 "General Practitioner ",
            //                 style: TextStyle(color: Colors.grey),
            //               ),
            //             ),
            //             Container(
            //               child: const Text("Dr. Manas Jha"),
            //             ),
            //             Container(
            //               child: const Text(
            //                 "------------------------------",
            //                 style: TextStyle(color: Colors.grey),
            //               ),
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Stack(
            //           children: [
            //             Container(
            //               color: const Color.fromRGBO(238, 246, 247, 1),
            //               child: Image.asset(
            //                 'assests/images/doctor2.jpeg',
            //                 width: 150,
            //                 height: 100,
            //                 // fit: BoxFit.cover,
            //               ),
            //             ),
            //           ],
            //         ),
            //         Column(
            //           children: [
            //             Container(
            //               child: const Text(
            //                 "General Practitioner ",
            //                 style: TextStyle(color: Colors.grey),
            //               ),
            //             ),
            //             Container(
            //               child: const Text("Dr. Manas Jha"),
            //             ),
            //             Container(
            //               child: const Text(
            //                 "------------------------------",
            //                 style: TextStyle(color: Colors.grey),
            //               ),
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //   ],
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "HOME",
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_information_outlined),
              label: "G",
              // backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.health_and_safety,
                  color: Colors.grey,
                ),
                label: "H",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.interests,
                  color: Colors.grey,
                ),
                label: "L",
                backgroundColor: Colors.white),
          ],
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
                break;
              case 1:
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Doctors()));
                break;
              case 2:
                break;
              case 3:
                break;
              default:
                break;
            }
          }),
    );
  }
}
