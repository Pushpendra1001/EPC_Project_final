import 'package:flutter/material.dart';

import '../../authentication_repositary/authentication_repo.dart';

class signinoptions extends StatelessWidget {
  const signinoptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
                height: 50,
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    // style: OutlinedButton.styleFrom(
                    //   shape: BeveledRectangleBorder(),

                    // ),
                    onPressed: () {
                      AuthenticationRepositary.instance.signInWithGoogle();
                    },
                    icon: const Image(
                      image: AssetImage(
                        'assets/images/five.png',
                      ),
                      width: 20,
                    ),
                    label: const Text(
                      "Google",
                      style: TextStyle(color: Colors.black),
                    ))),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: SizedBox(
                height: 50,
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    // style: OutlinedButton.styleFrom(
                    //   shape: BeveledRectangleBorder(),

                    // ),
                    onPressed: () {
                      AuthenticationRepositary.instance.signInWithGoogle();
                    },
                    icon: const Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      width: 20,
                    ),
                    label: const Text(
                      "Apple",
                      style: TextStyle(color: Colors.black),
                    ))),
          ),
        ],
      ),
    );
  }
}
