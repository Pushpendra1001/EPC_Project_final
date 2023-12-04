import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listitem extends StatelessWidget {
  const listitem({super.key, required this.verificationName});

  final String verificationName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(CupertinoIcons.checkmark_circle_fill,
            color: Colors.white),
        title: Text(
          verificationName,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }
}
