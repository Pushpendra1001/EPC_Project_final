import 'package:epc/Driver/DriverScreens/ComfortVehicle.dart';
import 'package:epc/common/properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CapacityOfVehicle extends StatefulWidget {
  const CapacityOfVehicle({super.key});

  @override
  State<CapacityOfVehicle> createState() => _CapacityOfVehicleState();
}

class _CapacityOfVehicleState extends State<CapacityOfVehicle> {
  int SizeofVehicle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              "What is the seating capacity for passengers in your Vehicle?",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      if (SizeofVehicle > 0) {
                        SizeofVehicle--;
                        setState(() {});
                      }
                    },
                    icon: const Icon(
                      CupertinoIcons.minus_circle,
                      size: 64,
                    )),
                Text(
                  SizeofVehicle.toString(),
                  style: const TextStyle(fontSize: 48),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {});
                      SizeofVehicle++;
                    },
                    icon: const Icon(
                      CupertinoIcons.add_circled,
                      size: 64,
                    ))
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompfortVehicle(),
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
          ],
        ),
      ),
    );
  }
}
