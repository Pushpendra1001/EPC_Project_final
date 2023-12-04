import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverChatScreen extends StatelessWidget {
  const DriverChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Driver Name"),
        actions: [
          IconButton(
              onPressed: () {
                Get.snackbar("Not Available", "Comming soon");
              },
              icon: const Icon(
                Icons.call,
                size: 32,
              )),
          IconButton(
              onPressed: () {
                Get.snackbar("Not Available", "Comming soon");
              },
              icon: const Icon(
                Icons.more_vert,
                size: 32,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Type Your message",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Get.snackbar("Not Available", "Comming soon");
                    },
                    icon: const Icon(
                      Icons.mic,
                      size: 32,
                    )),
                IconButton(
                    onPressed: () {
                      Get.snackbar("Not Available", "Comming soon");
                    },
                    icon: const Icon(
                      Icons.send,
                      size: 32,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
