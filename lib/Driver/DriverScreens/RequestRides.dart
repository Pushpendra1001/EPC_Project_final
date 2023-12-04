import 'package:epc/common/properties.dart';
import 'package:epc/screens/MainScreens/Home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestRides extends StatelessWidget {
  const RequestRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: InkWell(
              onTap: () {
                Get.snackbar("Successful", "Ride confirmed",
                    colorText: Colors.green);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              child: CircleAvatar(
                backgroundColor: NavyColor,
                radius: 32,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Text(
                  "Request Rides",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return RequestRideList(
                        LocationTo: "123 Maple Street Toronoto",
                        Locationfrom: "567 Birchwood Road , Halifax, Ns",
                        PassengerName: "Surahh verma",
                        amount: "250",
                      );
                    },
                  ),
                ),
              ],
            )));
  }
}

class RequestRideList extends StatelessWidget {
  RequestRideList(
      {super.key,
      required this.LocationTo,
      required this.Locationfrom,
      required this.PassengerName,
      required this.amount});

  String PassengerName;
  String amount;
  String Locationfrom;
  String LocationTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: LinearProgressIndicator(
              minHeight: 4,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          PassengerName,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "⭐⭐⭐⭐⭐(29)",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.people,
                      size: 16,
                    ),
                    const Text(
                      "(2)",
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2),
                        child: Text(
                          amount,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () => Get.snackbar(
                            "Successful", "Ride Accepted",
                            colorText: Colors.green),
                        icon: const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 48,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green,
                                ),
                                Text(
                                  LocationTo,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            const Icon(Icons.more_vert),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.red,
                                ),
                                Text(
                                  Locationfrom,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ]),
                    ),
                    IconButton(
                        onPressed: () => Get.snackbar(
                            "Rejected", "Ride Rejected",
                            colorText: Colors.red),
                        icon: const Icon(
                          Icons.cancel_outlined,
                          color: Colors.red,
                          size: 48,
                        ))
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
