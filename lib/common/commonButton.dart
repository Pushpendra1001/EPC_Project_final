import 'package:flutter/material.dart';

class commonElevatedButton extends StatelessWidget {
  commonElevatedButton({super.key, required this.NameOfButton});

  String NameOfButton;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 2, 26, 62),
              fixedSize: const Size(200, 50),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(16)))),
          onPressed: () {},
          child: Text(
            NameOfButton,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
