import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Progress1 extends StatelessWidget {
  const Progress1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Your Application Progress',
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
          child: Column(children: [
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Application Submitted ',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '  Succesfully',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            _buildVerticalDivider(color: Colors.green),
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  '  Under Review',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            _buildVerticalDivider(color: Colors.green),
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Complaint Rejected',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '   See Details',
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            _buildVerticalDivider(color: Colors.red),
            _buildVerticalDivider(color: Colors.red),
            Row(
              children: [
                Icon(Icons.circle_outlined),
                Text(
                  '  Request Again',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            _buildVerticalDivider(color: Colors.black),
            _buildVerticalDivider(color: Colors.black),
            _buildVerticalDivider(color: Colors.black),
            Row(
              children: [
                Icon(Icons.circle_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Application Accepted',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '  Congratulations !!',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}

Widget _buildVerticalDivider({Color? color}) {
  return VerticalDivider(
    color: color,
    thickness: 20,
    width: 40,
    indent: 10,
    endIndent: 10,
  );
}
