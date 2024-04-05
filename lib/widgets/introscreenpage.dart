import 'package:bug_basher/widgets/screensize.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreenPage extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;

  const IntroScreenPage({
    Key? key,
    required this.imagePath,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 32 * widthFactor(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: heightFactor(context) * 336,
            ),
            SizedBox(height: heightFactor(context) * 53),
            SizedBox(
              width: 248 * widthFactor(context),
              height: 72 * heightFactor(context),
              child: Text(
                text1,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: heightFactor(context) * 16),
            SizedBox(
              height: 40 * heightFactor(context),
              width: 303 * widthFactor(context),
              child: Text(
                text2,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
