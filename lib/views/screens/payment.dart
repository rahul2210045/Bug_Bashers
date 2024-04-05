import 'package:bug_basher/utils/constants/Payment_Widget.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text("Bank Balance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              const Text("RS - 7,64324",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              //  SizedBox(height: 10,),
              // const Text("saving Account,Bank of Baroda 5615",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
              const SizedBox(height: 20,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Transaction History",style: TextStyle(fontWeight: FontWeight.w600),),
                  Spacer(),
                  TextButton(onPressed: (){}, child: const Text("See All"))

                ],
              ),
           Column(
            children: [
              Payment_Widget(name: "Sarthak", date: "9 Oct, 2023", amount: "₹160", isReceived: true),
              // Payemnt_Widget(name: "Sarthak Ranjan Hota", date: "9 Oct, 2023", amount: "₹160"),
                Payment_Widget(name: "Sarthak Ranjan Hota", date: "9 Oct, 2023", amount: "₹160", isReceived: false,),
                  Payment_Widget(name: "Sarthak Ranjan Hota", date: "9 Oct, 2023", amount: "₹160", isReceived: false,)
            ],
           )

            ],
          ),
        ),
      ),
    );
  }
}