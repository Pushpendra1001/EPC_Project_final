import 'package:epc/Driver/driversignin/driversignin.dart';
import 'package:epc/Passenger/passengeronboard.dart';
import 'package:epc/provider/AppModeProvider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class startscreen extends StatelessWidget {
  const startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GetAppMode = Provider.of<AppModeProvider>(context);

    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFF38365D),
              Color(0xFF0A94B0),
            ],
                stops: [
              0.45,
              0.8
            ])),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                      ),
                      child: Lottie.network(
                          'https://lottie.host/d42edf7b-7a41-45c5-bca2-6b96bdba5d2f/KylKW86W5t.json')),
                  const SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const passengerOnboard(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        'I am Passenger',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        GetAppMode.ChangeMode();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const driversignin(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        'I am Driver',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
