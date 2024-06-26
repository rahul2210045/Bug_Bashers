import 'package:bug_basher/views/screens/account.dart';
import 'package:bug_basher/views/screens/loan.dart';
import 'package:bug_basher/views/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  // start the voice code.......................
  TextEditingController controller = TextEditingController();

  FlutterTts flutterTts = FlutterTts();

  double volume = 1.0;
  double pitch = 1.0;
  double speachRate = 0.5;
  List<String>? languages;
  // String langCode = "en-Us";
  String langCode = "hi_IN";
  @override
  void initState() {
    // init();
    _speak();
    super.initState();
    init();
    // _speak();
  }

  void init() async {
    languages = List<String>.from(await flutterTts.getLanguages);
    setState(() {});
  }

  void initSetting() async {
    await flutterTts.setVolume(volume);
    await flutterTts.setPitch(pitch);
    await flutterTts.setSpeechRate(speachRate);
    await flutterTts.setLanguage(langCode);
  }

  // speak() async {
  //   await flutterTts.speak(value.text);
  // }

  void _speak() async {
    initSetting();
    await flutterTts.speak(
        'press 1   Accounts Information, press 2   Deposits ,press 3   Loans ,press 4   Insurance');
  }

  void _stop() async {
    initSetting();
    await flutterTts.speak(controller.text);
  }

// ennd of screen code.......................................................
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 111, 232, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30),
              height: 500,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(17, 111, 232, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFeatureRow(
                      index: 0,
                      number: "1.",
                      imagePath:
                          "assets/images/Credit-Card-3--Streamline-Plump.png",
                      title: "Accounts Information",
                    ),
                    buildFeatureRow(
                      index: 1,
                      number: "2.",
                      imagePath:
                          "assets/images/File-Dollar--Streamline-Plump.png",
                      title: "Deposits",
                    ),
                    buildFeatureRow(
                      index: 2,
                      number: "3.",
                      imagePath:
                          "assets/images/share-coin-dollar--payment-cash-money-finance-receive-give-coin-hand.png", // Replace with your image path
                      title: "Loans",
                    ),
                    buildFeatureRow(
                      index: 3,
                      number: "4.",
                      imagePath:
                          "assets/images/Piggy-Bank--Streamline-Plump.png", // Replace with your image path
                      title: "Insurance",
                    ),
                    buildFeatureRow(
                      index: 4,
                      number: "5.",
                      imagePath:
                          "assets/images/Group.png", // Replace with your image path
                      title: "Card",
                    ),
                    buildFeatureRow(
                      index: 6,
                      number: "6.",
                      imagePath:
                          "assets/images/shopping-cart-1--shopping-cart-checkout.png", // Replace with your image path
                      title: "Shop & Order",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "Recharge & Pay Bills",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle onTap event
                        // For example, navigate to a page
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 2, 2),
                        child: Image.asset(
                          "assets/images/Frame 33.png", // Replace with your image path
                          width: 50,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap event
                        // For example, navigate to a page
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/Frame 34.png", // Replace with your image path
                          width: 50,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap event
                        // For example, navigate to a page
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/Frame 35.png", // Replace with your image path
                          width: 50,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap event
                        // For example, navigate to a page
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/Frame 36.png", // Replace with your image path
                          width: 50,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap event
                        // For example, navigate to a page
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Image.asset(
                          "assets/images/Frame 37.png", // Replace with your image path
                          width: 50,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    )
                    // Add more GestureDetector or InkWell widgets for additional buttons in the row
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildFeatureRow(
      {required int index,
      required String number,
      required String imagePath,
      required String title}) {
    return GestureDetector(
      onTap: () {
        // Navigate to the respective page based on the index
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => accontinfo()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DepositsPage()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loan()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InsurancePage()),
            );
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InsurancePage()),
            );
            break;
          case 5:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InsurancePage()),
            );
            break;
          case 6:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Shop()),
            );
            break;
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 3, right: 3)),
          Text(number, style: TextStyle(color: Colors.white)),
          Padding(padding: EdgeInsets.only(left: 10, right: 10)),
          Image.asset(imagePath),
          Padding(padding: EdgeInsets.only(left: 10, right: 10)),
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class AccountsInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts Information'),
      ),
      body: Center(
        child: Text('This is the Accounts Information page'),
      ),
    );
  }
}

class DepositsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposits'),
      ),
      body: Center(
        child: Text('This is the Deposits page'),
      ),
    );
  }
}

class LoansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loans'),
      ),
      body: Center(
        child: Text('This is the Loans page'),
      ),
    );
  }
}

class InsurancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insurance'),
      ),
      body: Center(
        child: Text('This is the Insurance page'),
      ),
    );
  }
}
