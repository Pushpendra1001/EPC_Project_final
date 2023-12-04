import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Ride history",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Expanded(child: RideHistoryBox());
                  },
                )),
          ),
        ],
      ),
    );
  }
}

class RideHistoryBox extends StatelessWidget {
  const RideHistoryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "03 Oct 2022, 03:40PM",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$20.00",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ID : 4893573957893",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "UPI",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green,
                                ),
                                Text(
                                  "123 Maple Street, Toronoto , On",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            Icon(Icons.more_vert),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.red,
                                ),
                                Text(
                                  "567 Birchwood Road, Halifax, NS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ]),
                    ),
                    const Icon(
                      Icons.verified_outlined,
                      color: Colors.green,
                      size: 48,
                    )
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
