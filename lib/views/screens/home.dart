import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logos/Frame 13225.png',
                width: 22,
                height: 36,
              ),
              Text(
                '  GraminFinance',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
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
                          Text(
                            "Vidhi Gupta",
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
            Container(
              padding: const EdgeInsets.all(30),

              height: 200,
              // width: 300,
              child: Image.asset('assets/images/image 26.png'),
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Good Afternoon, ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "VIDHI GUPTA...",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Please enter 4 digit MPIN",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Trouble Signing In ?",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                    child: Image.asset("assets/images/Frame 48084 (1).png"))
              ],
            ),
            SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Government schemes",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
