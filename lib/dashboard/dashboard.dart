import 'package:flutter/material.dart';

import '../authentication_repositary/authentication_repo.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 90,
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            AuthenticationRepositary.instance.logout();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              backgroundColor: Colors.red),
          child: const Text(
            'LOGOUT',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      )),
    );
  }
}
