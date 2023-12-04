import 'package:flutter/material.dart';

class PaymentOption extends StatelessWidget {
  PaymentOption({
    super.key,
    required this.paymentIcon,
    required this.paymentTitle,
    required this.paymentSubtitle,
  });

  Icon paymentIcon;
  String paymentTitle;
  var paymentSubtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Center(
          child: ListTile(
            leading: paymentIcon,
            title: Text(
              paymentTitle,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: paymentSubtitle != null ? Text(paymentSubtitle!) : null,
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
