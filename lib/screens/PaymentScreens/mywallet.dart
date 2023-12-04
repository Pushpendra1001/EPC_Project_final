import 'package:epc/common/properties.dart';
import 'package:epc/provider/walletMoneyProvider.dart';
import 'package:epc/screens/PaymentScreens/wallet_addmoney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    int walletAmount = context.watch<walletMoneyProvider>().walletAmount;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "My wallet",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Available Balance",
                          style: TextStyle(fontSize: 18),
                        ),
                        const VerticalDivider(width: 10),
                        Text(
                          "\$ $walletAmount",
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          Center(
            child: ClipRRect(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 26, 62),
                    fixedSize: const Size(150, 50),
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => WalletPayment()));
                },
                child: const Text(
                  "Add Money",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "History",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text("27 December 2023"),
          ),
          transactionContainer(
              transactionAmount: "50",
              transactionSuccess: true,
              transactionName: "Wallet Recharge"),
          transactionContainer(
              transactionAmount: "50",
              transactionSuccess: false,
              transactionName: "Wallet Recharge"),
        ],
      ),
    );
  }
}

class transactionContainer extends StatelessWidget {
  transactionContainer(
      {super.key,
      required this.transactionAmount,
      required this.transactionSuccess,
      required this.transactionName});

  bool transactionSuccess;
  String transactionName;
  String transactionAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                !transactionSuccess
                    ? const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 32,
                      )
                    : const Icon(
                        Icons.add_circle_outline,
                        color: Colors.green,
                        size: 32,
                      ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  transactionName,
                  style: const TextStyle(fontSize: 18),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        !transactionSuccess
                            ? const Icon(
                                CupertinoIcons.minus,
                                size: 14,
                              )
                            : const Icon(
                                Icons.add,
                                size: 14,
                              ),
                        Text(
                          "\$$transactionAmount",
                          style: const TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                    !transactionSuccess
                        ? const Text(
                            "Failed",
                            style: TextStyle(fontSize: 10, color: Colors.red),
                          )
                        : const Text(
                            "Success",
                            style: TextStyle(fontSize: 10, color: Colors.green),
                          )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )),
      ),
    );
  }
}
