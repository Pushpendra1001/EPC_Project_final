import 'dart:async';

import 'package:epc/screens/BottomSliders/foundRide.dart';
import 'package:flutter/material.dart';

class SearchingRide extends StatefulWidget {
  const SearchingRide({super.key});

  @override
  State<SearchingRide> createState() => _SearchingRideState();
}

class _SearchingRideState extends State<SearchingRide> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      Navigator.pop(context);
      showModalBottomSheet(
          isScrollControlled: true,
          showDragHandle: true,
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          context: context,
          builder: (context) => const foundRide());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2 - 100,
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LinearProgressIndicator(),
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 72,
              ),
              const Text("Looking For Your Ride...",
                  style: TextStyle(fontSize: 24)),
              Center(
                child: ClipRRect(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 2, 26, 62),
                        fixedSize: const Size(150, 50),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}
