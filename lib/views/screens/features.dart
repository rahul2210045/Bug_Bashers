// // import 'package:flutter/material.dart';

// // class Features extends StatefulWidget {
// //   const Features({super.key});

// //   @override
// //   State<Features> createState() => _FeaturesState();
// // }

// // class _FeaturesState extends State<Features> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // backgroundColor: Colors.blue,
// //       appBar: AppBar(
// //          backgroundColor: Colors.blue,
// //       ),
// //       body: Container(
// //         height: 500,
// //         decoration: BoxDecoration(
// //           color: Colors.blue,
// //           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))

// //         ),
// //         child: Padding(
// //           padding: EdgeInsets.all(10),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             children: [

// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   children: [
// //                     Text("1.",style: TextStyle(color: Colors.white)),
// //                     Image.asset("assets/images/Credit-Card-3--Streamline-Plump.png"),
// //                     Text("Accounts Information",style: TextStyle(color: Colors.white),)
// //                   ],
// //                 ),
// //                    Row(
// //                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

// //                   children: [
// //                     Text("2 .",style: TextStyle(color: Colors.white)),
// //                     Image.asset("assets/images/File-Dollar--Streamline-Plump.png"),
// //                     Text("Deposits",style: TextStyle(color: Colors.white),)
// //                   ],
// //                 ),
// //                    Row(
// //                   children: [
// //                     Text("3.",style: TextStyle(color: Colors.white)),
// //                     // Image.asset(""),
// //                     Text("Loans",style: TextStyle(color: Colors.white),)
// //                   ],
// //                 ),
// //                    Row(
// //                   children: [
// //                     Text("4.",style: TextStyle(color: Colors.white)),
// //                     // Image.asset(""),
// //                     Text("Insurance",style: TextStyle(color: Colors.white),)
// //                   ],
// //                 )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Features extends StatefulWidget {
//   const Features({super. key}) ;

//   @override
//   State<Features> createState() => _FeaturesState();
// }

// class _FeaturesState extends State<Features> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20),
//           ),
//         ),
//         child: ListView.builder(
//           itemCount: 4, // Number of features
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               leading: Text((index + 1).toString(), style: TextStyle(color: Colors.white)),
//               title: Text(
//                 _getTitle(index),
//                 style: TextStyle(color: Colors.white),
//               ),
//               trailing: _buildButtonForIndex(context,index),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   String _getTitle(int index) {
//     switch (index) {
//       case 0:
//         return "Accounts Information";
//       case 1:
//         return "Deposits";
//       case 2:
//         return "Loans";
//       case 3:
//         return "Insurance";
//       default:
//         return "";
//     }
//   }
// Widget _buildButtonForIndex(BuildContext context, int index) {
//     // You can define your button based on the index
//     // For now, let's just return a simple button for "Accounts Information"
//     if (index == 0) {
//       return GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => AccountInformationPage()),
//           );
//         },
//         child: Image.asset(
//           "assets/images/your_image.png", // Replace with your image path
//           width: 24, // Adjust width as needed
//           height: 24, // Adjust height as needed
//           color: Colors.white, // Optional: change color of the image
//         ),
//       );
//     } else {
//       return SizedBox.shrink(); // Return an empty container for other items
//     }
//   }

// }

// class AccountInformationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Account Information'),
//       ),
//       body: Center(
//         child: Text('This is the Account Information page'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
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
                      index: 5,
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
              MaterialPageRoute(
                  builder: (context) => AccountsInformationPage()),
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
              MaterialPageRoute(builder: (context) => LoansPage()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InsurancePage()),
            );
            break;
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 10, right: 10)),
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
