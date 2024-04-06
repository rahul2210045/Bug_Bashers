import 'package:flutter/material.dart';

class accontinfo extends StatefulWidget {
  const accontinfo({super.key});

  @override
  State<accontinfo> createState() => _accontinfoState();
}

class _accontinfoState extends State<accontinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accounts Information"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                    "assets/images/WhatsApp Image 2024-04-06 at 07.52.41_a0a273f6.jpg"),
                SizedBox(
                  width: 10,
                ),
                Text("Savings A/c")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "XXXXXXXX2635",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "DEFENCE BANKING STATION H.",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  " QTR. LUCKNOW",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
