import 'package:flutter/material.dart';

class Payment_Widget extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  final bool isReceived;

  Payment_Widget({
    required this.name,
    required this.date,
    required this.amount,
    required this.isReceived,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            child: Icon(
              isReceived ? Icons.arrow_back : Icons.arrow_forward,
              color: isReceived ? Colors.red : null,
            ),
            backgroundColor: isReceived ? Color.fromARGB(255, 242, 181, 181) : null,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Sent on: $date',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Amount ${isReceived ? 'Received' : 'Sent'}: $amount',
                  style: TextStyle(
                    color: isReceived ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}