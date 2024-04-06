import 'package:bug_basher/widgets/Custom_container.dart';
import 'package:bug_basher/widgets/screensize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Loan extends StatefulWidget {
  const Loan({super.key});

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Loan'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 148,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 1);
                  });
                },
                children: [
                  Image.asset('assets/images/Group 1000000933.png'),
                  Image.asset('assets/images/Group 1000000933.png'),
                  Image.asset('assets/images/Group 1000000933.png'),
                  Image.asset('assets/images/Group 1000000933.png'),
                  Image.asset('assets/images/Group 1000000933.png'),
                ],
              ),
            ),
            Positioned(
                top: heightFactor(context) * 175,
                left: widthFactor(context) * 150,
                child: SmoothPageIndicator(
                    controller: _controller,
                    count: 5,
                    effect: ExpandingDotsEffect(
                        radius: 5 * heightFactor(context),
                        dotHeight: 5 * heightFactor(context),
                        dotWidth: 5 * widthFactor(context),
                        dotColor: Color.fromARGB(255, 166, 166, 166),
                        activeDotColor: Color.fromARGB(
                          255,
                          53,
                          53,
                          53,
                        )))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "My Loans",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View and manage your exsisting borrowings",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.w400),
                  )
                ]),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )
              ]),
            ),
            Divider(),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apply for a New Loan',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    CustomContainer(
                      text1: '1. ',
                      text2: ' Car ',
                      image: 'assets/logos/Group 48283.png',
                    ),
                    CustomContainer(
                      text1: '2. ',
                      text2: '  Gold',
                      image: 'assets/logos/Gold--Streamline-Plump.png',
                    ),
                    CustomContainer(
                      text1: '3. ',
                      text2: ' Education ',
                      image: "assets/logos/teacher.png",
                    ),
                    CustomContainer(
                      text1: '4.',
                      text2: ' Home ',
                      image: 'assets/logos/Bank--Streamline-Plump.png',
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
