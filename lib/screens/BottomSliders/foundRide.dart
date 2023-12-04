import 'package:epc/provider/LocationProvider.dart';
import 'package:epc/screens/BottomSliders/cancelRide.dart';
import 'package:epc/screens/MainScreens/DriverChatScreen.dart';
import 'package:epc/screens/PaymentScreens/allPaymentMethod.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class foundRide extends StatelessWidget {
  const foundRide({super.key});

  @override
  Widget build(BuildContext context) {
    final getlocation = Provider.of<LocationProvider>(context);

    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      maxChildSize: 0.8,
      minChildSize: 0.3,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              // height: MediaQuery.of(context).size.height / 2 - 150,
              width: double.infinity,
              child: ListView(controller: scrollController, children: [
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text("Your Ride is arriving in 5 mins",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.black,
                                  )),
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 24,
                                child: Icon(Icons.person),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Name"),
                                Text("Vechile Number"),
                              ],
                            ),
                            const Spacer(),
                            const Column(
                              children: [
                                Row(
                                  children: [
                                    Text("4.5"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.star)
                                  ],
                                ),
                                Text("Vehicle Model"),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.black,
                                  )),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(
                                    onPressed: () {
                                      Get.snackbar("Error",
                                          "This is Service Not avialable",
                                          colorText: Colors.red);
                                    },
                                    icon: const Icon(Icons.phone)),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.black,
                                  )),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DriverChatScreen(),
                                          ));
                                    },
                                    icon: const Icon(Icons.message)),
                              ),
                            ),
                            const Spacer(),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black,
                                    )),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "OTP : 0000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        letterSpacing: 5),
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Ride Route",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 32,
                                          color: Colors.green,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          getlocation.fromLocation,
                                          style: const TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(Icons.more_vert),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.red,
                                          size: 32,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          getlocation.toLocation,
                                          style: const TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider()
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Fare ",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\$70.32",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Payment Method",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PaymentMethod(),
                                              ));
                                        },
                                        child: const Text(
                                          "Change Payment Method",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.payment),
                                  const Text(
                                    "Card",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        const SizedBox(height: 100),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width / 2 + 50,
                                  50),
                              shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                          onPressed: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                                isScrollControlled: true,
                                enableDrag: true,
                                backgroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                ),
                                context: context,
                                builder: (context) => const cancelRide());
                          },
                          child: const Text(
                            "Cancel Ride",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
