import 'package:epc/Driver/driververfication/Profilephoto.dart';
import 'package:epc/Driver/driververfication/preferenceLanguage.dart';
import 'package:epc/common/PaymentOption.dart';
import 'package:epc/provider/walletMoneyProvider.dart';
import 'package:epc/screens/CommingSoon.dart';
import 'package:epc/screens/MainScreens/Profile.dart';

import 'package:epc/screens/PaymentScreens/atmcardScreens.dart';
import 'package:epc/screens/PaymentScreens/mywallet.dart';
import 'package:epc/screens/PaymentScreens/selectUpi.dart';
import 'package:epc/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userWalletBalance = Provider.of<walletMoneyProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          child: Text(
            "Settings",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.person),
            paymentSubtitle: "",
            paymentTitle: "Profile Page",
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const preferenceLanguage(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.language),
            paymentSubtitle: "English",
            paymentTitle: "App Languages",
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CommingSoon(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.credit_card),
            paymentSubtitle: "Manage the data you share with us",
            paymentTitle: "Privacy",
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CommingSoon(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.security_rounded),
            paymentSubtitle:
                "Control you account security with 2-step verification",
            paymentTitle: "Security",
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CommingSoon(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.system_update_alt_outlined),
            paymentSubtitle: "Get Early access to latest Feature",
            paymentTitle: "Subscribe to Beta",
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CommingSoon(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.error_sharp),
            paymentSubtitle: "8.6.4",
            paymentTitle: "About",
          ),
        ),
        InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const startscreen(),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: const Center(
                  child: ListTile(
                    title: Text(
                      "LogOut",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            )),
      ]),
    );
  }
}
