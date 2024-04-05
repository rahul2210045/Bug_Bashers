import 'package:bug_basher/widgets/introscreenpage.dart';
import 'package:bug_basher/widgets/screensize.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                '  Banking App',
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
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 105 * heightFactor(context)),
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: [
              IntroScreenPage(
                imagePath: 'assets/images/Frame 6.png',
                text1: 'One Platform to all your banking needs',
                text2:
                    'You can make and receive payments swiftly and seamlessly. ',
              ),
              IntroScreenPage(
                imagePath: 'assets/images/Frame 6 (1).png',
                text1: 'We Take your safety seriously',
                text2:
                    'With our Multi-Factor Authenticator, you’re in safe hands with us.',
              ),
            ],
          ),
        ),
        Positioned(
            top: heightFactor(context) * 459,
            left: widthFactor(context) * 165,
            child: SmoothPageIndicator(
                controller: _controller,
                count: 2,
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
        Positioned(
            left: 29 * widthFactor(context),
            bottom: 40 * heightFactor(context),
            child: onLastPage
                ? Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'nav');
                        },
                        child: Container(
                          height: 50 * heightFactor(context),
                          width: 302 * widthFactor(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 36, 107, 253),
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4 * heightFactor(context),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'auth_page');
                        },
                        child: Container(
                          height: 50 * heightFactor(context),
                          width: 302 * widthFactor(context),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 36, 107, 253),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 36, 107, 253),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      height: 50 * heightFactor(context),
                      width: 302 * widthFactor(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 36, 107, 253),
                      ),
                      // padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "Next",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
      ]),
    );
  }
}
