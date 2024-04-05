// import 'package:bug_basher/utils/constants/utilities.dart';
// import 'package:flutter/material.dart';

// class home extends StatefulWidget {
//   const home({super.key});

//   @override
//   State<home> createState() => _homeState();
// }

// class _homeState extends State<home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           // Circular Avatar and Name
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               // children: <Widget>[
//               //   CircleAvatar(
//               //     radius: 50,
//               //     backgroundImage: NetworkImage(
//               //         'https://via.placeholder.com/150'), // Your profile image URL here
//               //   ),
//               //   SizedBox(height: 10),
//               //   Text(
//               //     'Your Name',
//               //     style: TextStyle(
//               //       fontSize: 20,
//               //       fontWeight: FontWeight.bold,
//               //     ),
//               //   ),
//               // ],
//               children: [
//                 Row(
//                   children: [
//                     Container(child: CircleAvatar(backgroundColor: Colors.amber,)),
//                     Column(
//                       children: [
//                         Container(child: Text("hello")),
//                         Container(child: Text("Vidhi Gupta"),)
//                       ],
//                     )
//                   ],
//                 ),
//                 // buildtextfiled("", "", context, "Search", false, controller)

//               ],
//             ),
//           ),

//           // Search Button
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.0),
//             // child: RaisedButton(
//             //   onPressed: () {
//             //     // Add your search functionality here
//             //   },
//             //   child: Text('Search'),
//             // ),
//           ),

//           // Images Row
//           SizedBox(
//             height: 200,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: <Widget>[
                
//                 // Container(
//                 //   width: 150,
//                 //   margin: EdgeInsets.all(10),
//                 //   color: Colors.red,
//                 // ),
//                 // Container(
//                 //   width: 150,
//                 //   margin: EdgeInsets.all(10),
//                 //   color: Colors.blue,
//                 // ),
//                 // Container(
//                 //   width: 150,
//                 //   margin: EdgeInsets.all(10),
//                 //   color: Colors.green,
//                 // ),
//                 // Container(
//                 //   width: 150,
//                 //   margin: EdgeInsets.all(10),
//                 //   color: Colors.yellow,
//                 // ),
//               ],
//             ),
//           ),
//         ],
//       ),
    
//     );
//   }
// }

import 'package:flutter/material.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController search=TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                      Text("Banking App",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
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
                  SizedBox(height: 20,),
                  const Row(
                    
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                       CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage("assets/images/Ellipse 1 (1).png"),
                        radius: 20,
                      ),
                                            Padding(padding: EdgeInsets.all(10)),

                      Column(
                        children: [
                          Text(
                            "HELLO USER",
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 10),
                          ),
                            Text(
                            "Vidhi Gupta",
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 10,fontWeight: FontWeight.w600),
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
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(128, 128, 128, 1),fontSize: 12),
                        prefixIcon: Icon(Icons.search, color: Colors.grey,size: 20,),
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
              padding: const EdgeInsets.all(30),

              height: 200,
              // width: 300,
              child: Image.asset('assets/images/image 26.png'),
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Good Afternoon, ",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                ),
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
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                ),
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
                  "Please enter 4 digit MPIN",
                  style: TextStyle(fontSize: 15),
                ),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),

            // adding mpin otp
               const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Trouble Signing In ?",
                  style: TextStyle(fontSize: 15),
                ),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),
                   Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
             Container(child: Image.asset("assets/images/Frame 48084 (1).png"))
              ],
            ),
            SizedBox(
              height: 8,
            ),
                        const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Government schemes",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
                ),
                // Text(
                //   "SEE ALL",
                //   style: TextStyle(color: Colors.blue),
                // )
              ],
            ),
            
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home()));
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