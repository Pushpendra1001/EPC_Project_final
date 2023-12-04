import 'dart:async';

import 'package:epc/Driver/DriverScreens/RequestRides.dart';
import 'package:epc/screens/BottomSliders/foundRide.dart';
import 'package:flutter/material.dart';

class LookingForRequestRide extends StatefulWidget {
  const LookingForRequestRide({super.key});

  @override
  State<LookingForRequestRide> createState() => LookingForRequestRideState();
}

class LookingForRequestRideState extends State<LookingForRequestRide> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RequestRides(),
          ));
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
              const Text("Looking For Request Ride...",
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