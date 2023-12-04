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
              ElevatedButton(
                child: const Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}
