import 'dart:math';

import 'package:epc/common/reasonsToCancel.dart';
import 'package:epc/screens/BottomSliders/foundRide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class cancelRide extends StatelessWidget {
  const cancelRide({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      maxChildSize: 0.8,
      minChildSize: 0.3,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: double.infinity,
              child: ListView(controller: scrollController, children: [
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text("Your ride is confirmed.",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Driver will be reach in less then 4 min",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                            "Still want to cancel ? please tell us why "),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                reasonsToCancel(
                                  problem: "Get Better Ride",
                                ),
                                reasonsToCancel(
                                  problem: "Wrong Location",
                                ),
                                reasonsToCancel(
                                  problem: "Neet to cancel in Emergency ",
                                ),
                                reasonsToCancel(
                                  problem: "Need to cancel ",
                                ),
                                reasonsToCancel(
                                  problem: "Ride By Mistake",
                                ),
                                reasonsToCancel(
                                  problem: "Driver take much more time ",
                                ),
                                reasonsToCancel(
                                  problem: "Not Prefer to say ",
                                ),
                              ]),
                        ),
                        const SizedBox(height: 100),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 2, 26, 62),
                                  fixedSize: const Size(150, 50),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16)))),
                              onPressed: () {
                                Navigator.pop(context);
                                showModalBottomSheet(
                                    showDragHandle: true,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) => const foundRide());
                              },
                              child: const Text(
                                "Don't Cancel",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 50),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16)))),
                              onPressed: () {
                                Navigator.pop(context);
                                Get.snackbar('Booking Cancel',
                                    'Your Retro Ride is Cancelled',
                                    colorText: Colors.black,
                                    icon: const Icon(
                                      Icons.cancel,
                                      color: Colors.red,
                                    ));
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
