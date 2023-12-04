import 'package:epc/common/PaymentOption.dart';
import 'package:epc/provider/walletMoneyProvider.dart';

import 'package:epc/screens/PaymentScreens/atmcardScreens.dart';
import 'package:epc/screens/PaymentScreens/mywallet.dart';
import 'package:epc/screens/PaymentScreens/selectUpi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final userWalletBalance = Provider.of<walletMoneyProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          child: Text(
            "Payment",
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
                builder: (context) => const MyWallet(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.wallet_rounded),
            paymentSubtitle: "Wallet : ${userWalletBalance.YourwalletAmount}",
            paymentTitle: "Retro Wallet",
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const atmCardScreen(),
              )),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.credit_card),
            paymentSubtitle: "Primary payment method",
            paymentTitle: "My Cards",
          ),
        ),
        InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SelectUpiOption(),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: ListTile(
                    leading: SvgPicture.asset("assets/svg/Upi.svg"),
                    title: const Text(
                      "Pay with UPI",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            )),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.local_atm_outlined),
            paymentSubtitle: null,
            paymentTitle: "Cash",
          ),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.more_horiz),
            paymentSubtitle: null,
            paymentTitle: "Apple Pay",
          ),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: PaymentOption(
            paymentIcon: const Icon(Icons.more_horiz),
            paymentSubtitle: null,
            paymentTitle: "Razarpay",
          ),
        ),
      ]),
    );
  }
}
