import 'package:flutter/material.dart';

class Financial_Education extends StatefulWidget {
  const Financial_Education({super.key});

  @override
  State<Financial_Education> createState() => _Financial_EducationState();
}

class _Financial_EducationState extends State<Financial_Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Education'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
                'assets/images/WhatsApp Image 2024-04-06 at 07.47.58_bbbf0cef.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Latest Articles'), Text('Guidelines')],
            ),
            Image.asset(
                'assets/images/WhatsApp Image 2024-04-06 at 07.48.02_9107af3a.jpg'),
            Image.asset(
                'assets/images/WhatsApp Image 2024-04-06 at 07.48.08_a04543f7.jpg'),
            Image.asset(
                'assets/images/WhatsApp Image 2024-04-06 at 07.48.09_3883202c.jpg')
          ],
        ),
      ),
    );
  }
}
