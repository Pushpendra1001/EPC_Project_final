import 'package:epc/common/commonButton.dart';
import 'package:epc/screens/PaymentScreens/addAtmCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class atmCardScreen extends StatelessWidget {
  const atmCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const []),
      body: Column(
        children: [
          const Text(
            "My Cards",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              height: MediaQuery.of(context).size.height / 2 / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "State Bank of India",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "1234 5678 9123",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 4),
                          ),
                          Text(
                            "06/26",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/Visa.png"),
                    )
                  ],
                ),
              ]),
            ),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: ClipRRect(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 2, 26, 62),
                        fixedSize: const Size(200, 50),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddAtmCard(),
                          ));
                    },
                    child: const Text(
                      "Add new Card",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
