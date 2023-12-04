import 'package:epc/Driver/driververfication/Profilephoto.dart';
import 'package:epc/Driver/driververfication/driverLicense.dart';
import 'package:epc/Driver/driververfication/drivereligibility.dart';
import 'package:epc/Driver/driververfication/driverinsurance.dart';
import 'package:epc/Driver/driververfication/drivervehicleinfo.dart';
import 'package:epc/Driver/driververfication/preferenceLanguage.dart';
import 'package:epc/common/gradientColor.dart';
import 'package:epc/common/listitem.dart';

import 'package:epc/screens/MainScreens/Home_Screen.dart';
import 'package:flutter/material.dart';

class driverVerification extends StatefulWidget {
  const driverVerification({super.key});

  @override
  State<driverVerification> createState() => _driverVerificationState();
}

class _driverVerificationState extends State<driverVerification> {
  @override
  Widget build(BuildContext context) {
    return gradientscreen(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Welcome Driver",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                const Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  "Some Required steps need to setup your account. ",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      InkWell(
                        child:
                            const listitem(verificationName: "Profile Photo"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const profilePhoto(),
                              ));
                        },
                      ),
                      InkWell(
                        child: const listitem(
                            verificationName: "Driver's License"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const driverLicense(),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const drivereligibility(),
                              ));
                        },
                        child: const listitem(
                            verificationName: "Proof of work Eligibility"),
                      ),
                      InkWell(
                        child: const listitem(
                            verificationName: "Vehicle Insurance"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const vehicleinsurancescreen(),
                              ));
                        },
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const vehicleInformation(),
                            )),
                        child: const listitem(
                            verificationName: "Vehicle information"),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const preferenceLanguage(),
                            )),
                        child: const listitem(
                            verificationName: "Preference language"),
                      ),
                    ],
                  ),
                ),
                Center(
                    child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      )),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 32,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 32,
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
