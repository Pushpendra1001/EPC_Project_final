import 'package:epc/common/properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAtmCard extends StatelessWidget {
  const AddAtmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height / 2 / 2,
                width: MediaQuery.of(context).size.width,
                child: const Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bank",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "XXXX XXXX XXXX",
                              style: TextStyle(fontSize: 16, letterSpacing: 4),
                            ),
                            Text(
                              "XX/XX",
                              style: TextStyle(letterSpacing: 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text("Card Number"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                maxLength: 12,
                style: const TextStyle(
                  fontSize: 20,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "XXXX XXXX XXXX",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        "assets/images/Visa.png",
                        width: 50,
                        height: 20,
                      )),
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text("Expire Date"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: TextField(
                            maxLength: 5,
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 4,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text("CVV"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: TextField(
                            maxLength: 3,
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 4,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text("Card Holder Name"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: NavyColor,
                    radius: 32,
                    child: const Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
