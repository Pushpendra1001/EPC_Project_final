import 'package:flutter/material.dart';

class reasonsToCancel extends StatefulWidget {
  reasonsToCancel({super.key, required this.problem});

  String problem;

  @override
  State<reasonsToCancel> createState() => _reasonsToCancelState();
}

class _reasonsToCancelState extends State<reasonsToCancel> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.black : Colors.white,
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      onPressed: () {
        isSelected = !isSelected;
      },
      child: Text(
        widget.problem,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
