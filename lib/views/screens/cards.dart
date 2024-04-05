import 'package:bug_basher/widgets/screensize.dart';
import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text('Cards'),
      ),
      body: Column(
        children: [
          _buildContainerWithButton(
            backgroundImage: 'assets/images/Frame 1000000842.png',
            buttonText: 'My Debit Crds',
          ),
          _buildContainerWithButton(
            backgroundImage: 'assets/images/Frame 1000000843.png',
            buttonText: 'My Credit Cards',
          ),
          _buildContainerWithButton(
            backgroundImage: 'assets/images/Frame 48288.png',
            buttonText: 'My Prepaid Cards',
          ),
        ],
      ),
    );
  }

  Widget _buildContainerWithButton({
    required String backgroundImage,
    required String buttonText,
  }) {
    return Container(
      width: double.infinity,
      height: 240 * heightFactor(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            193 * widthFactor(context),
            120 * heightFactor(context),
            13 * widthFactor(context),
            66 * heightFactor(context)),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 36, 107, 253),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              fixedSize: Size(154, 54)),
          onPressed: () {
            // Add your onPressed callback here
          },
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
