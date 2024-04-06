import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shops & Order'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(219, 235, 250, 255),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const TextField(
              // controller: ser,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Pay by name or phone number',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(128, 128, 128, 1), fontSize: 12),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Text('Popular Ideas'),
          Image.asset(
              'assets/images/WhatsApp Image 2024-04-06 at 08.00.44_c4278449.jpg',
              scale: 4.0)
        ],
      ),
    );
  }
}
