import 'package:epc/common/properties.dart';
import 'package:epc/provider/walletMoneyProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class WalletPayment extends StatelessWidget {
  WalletPayment({super.key});

  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userWalletBalance = Provider.of<walletMoneyProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Add Money",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: amountController,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    CupertinoIcons.money_dollar,
                    size: 48,
                    color: Colors.black,
                  ),
                ),
                contentPadding: EdgeInsets.all(24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AddMoneyButton(
                  amount: 100,
                ),
                AddMoneyButton(
                  amount: 500,
                ),
                AddMoneyButton(
                  amount: 1000,
                )
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              if (amountController.text.isEmpty) {
                Get.snackbar('Error', 'Please Enter Valid Amount');
              } else {
                userWalletBalance.addMoney(int.parse(amountController.text));
                FocusScope.of(context).unfocus();
                Future.delayed(
                  const Duration(milliseconds: 200),
                  () {
                    Navigator.pop(context);
                  },
                );
              }
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
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class AddMoneyButton extends StatelessWidget {
  AddMoneyButton({super.key, required this.amount});
  int amount;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
              onPressed: () {
                Get.snackbar("Good", "You Can Add $amount \$");
              },
              child: Text(
                "\$ $amount",
                style: const TextStyle(fontSize: 22),
              )),
        ));
  }
}
