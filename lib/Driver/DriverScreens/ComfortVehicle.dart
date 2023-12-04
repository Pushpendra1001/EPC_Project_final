import 'package:epc/Driver/DriverScreens/LookingForRideRequest.dart';
import 'package:epc/screens/BottomSliders/searchRide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompfortVehicle extends StatelessWidget {
  const CompfortVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              "Would you consider maintaining comfort by keeping the middle ?",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    showDragHandle: true,
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (context) => const LookingForRequestRide());
              },
              child: const ListTile(
                title: Text("Yes, Sure!"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Divider(color: Colors.black, endIndent: 16, indent: 16),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text("No, I will squeeze in 3"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
