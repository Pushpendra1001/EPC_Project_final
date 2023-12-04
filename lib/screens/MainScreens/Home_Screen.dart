import 'package:epc/Driver/DriverScreens/CapacityOfVehicle.dart';
import 'package:epc/common/properties.dart';
import 'package:epc/provider/AppModeProvider.dart';
import 'package:epc/provider/LocationProvider.dart';
import 'package:epc/provider/UserDataProvider.dart';
import 'package:epc/provider/walletMoneyProvider.dart';
import 'package:epc/screens/BottomSliders/RideHistoryScreen.dart';
import 'package:epc/screens/BottomSliders/foundRide.dart';
import 'package:epc/screens/BottomSliders/searchRide.dart';
import 'package:epc/screens/CommingSoon.dart';
import 'package:epc/screens/MainScreens/SettingScreen.dart';
import 'package:epc/screens/PaymentScreens/mywallet.dart';
import 'package:epc/screens/PaymentScreens/wallet_addmoney.dart';

import 'package:epc/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userDataProvider = Provider.of<UserDataProvider>(context);
    final userData = userDataProvider;
    final ULocationProvider = Provider.of<LocationProvider>(context);
    final AppMode = Provider.of<AppModeProvider>(context);

    TextEditingController fromLocation =
        TextEditingController(text: ULocationProvider.fromLocation);
    TextEditingController toLocation =
        TextEditingController(text: ULocationProvider.toLocation);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      drawer: Drawer(
        elevation: 16,
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        color: Colors.grey.shade800,
                        size: 64,
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 6, 37, 84),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userData.fullName,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Text(
                              "(29)",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: drawerListItem(
                      drawerIconName: Icons.home,
                      drawerTitleName: "Home",
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RideHistory(),
                        )),
                    child: drawerListItem(
                      drawerIconName: Icons.history,
                      drawerTitleName: "Ride History",
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingScreen(),
                        )),
                    child: drawerListItem(
                      drawerIconName: Icons.settings,
                      drawerTitleName: "Settings",
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CommingSoon(),
                        )),
                    child: drawerListItem(
                      drawerIconName: Icons.chat,
                      drawerTitleName: "FAQ",
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CommingSoon(),
                        )),
                    child: drawerListItem(
                      drawerIconName: Icons.support_agent_rounded,
                      drawerTitleName: "Support",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (AppMode.AppMode == true) {
                        Get.snackbar("Welcome", "Driver");
                      } else {
                        Get.snackbar("Welcome", "User");
                      }
                      Navigator.pop(context);
                      AppMode.ChangeMode();
                      setState(() {});
                    },
                    child: drawerListItem(
                        drawerIconName: Icons.change_circle,
                        drawerTitleName: AppMode.AppMode == true
                            ? "Driver Mode"
                            : "Passenger Mode"),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const startscreen(),
                        )),
                    child: drawerListItem(
                      drawerIconName: Icons.logout,
                      drawerTitleName: "Log Out",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14)),
                height: MediaQuery.of(context).size.height,
                child: FlutterMap(
                  options: const MapOptions(
                    initialCenter: LatLng(26.9124336, 75.7872709),
                    initialZoom: 12.5,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    RichAttributionWidget(
                      attributions: [
                        TextSourceAttribution(
                          'OpenStreetMap contributors',
                          onTap: () => (Uri.parse(
                              'https://openstreetmap.org/copyright')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Text(
                          "Select Location",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Column(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.green,
                                size: 32,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      useSafeArea: true,
                                      showDragHandle: true,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) {
                                        return LocationInputForm(
                                            fromLocation: fromLocation,
                                            toLocation: toLocation);
                                      });
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Text(ULocationProvider.fromLocation),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Icon(Icons.more_vert_sharp),
                      ),
                      Row(
                        children: [
                          const Column(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.red,
                                size: 32,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      showDragHandle: true,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) {
                                        return LocationInputForm(
                                            fromLocation: fromLocation,
                                            toLocation: toLocation);
                                      });
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Text(ULocationProvider.toLocation),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ClipRRect(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 2, 26, 62),
                                fixedSize: const Size(150, 50),
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)))),
                            onPressed: () {
                              if (AppMode.AppMode == false) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CapacityOfVehicle(),
                                    ));
                              } else {
                                if (fromLocation.text != "" &&
                                    toLocation.text != "") {
                                  showModalBottomSheet(
                                      showDragHandle: true,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) =>
                                          const SearchingRide());
                                } else {
                                  Get.snackbar("Error", "Please Enter location",
                                      colorText: Colors.red);
                                }
                              }
                            },
                            child: const Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationInputForm extends StatefulWidget {
  const LocationInputForm({
    super.key,
    required this.fromLocation,
    required this.toLocation,
  });

  final TextEditingController fromLocation;
  final TextEditingController toLocation;

  @override
  State<LocationInputForm> createState() => _LocationInputFormState();
}

class _LocationInputFormState extends State<LocationInputForm> {
  @override
  Widget build(BuildContext context) {
    return LocationInputformm(context);
  }

  Padding LocationInputformm(BuildContext context) {
    final ULocationProvider = Provider.of<LocationProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.green,
              size: 32,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: widget.fromLocation,
                decoration: const InputDecoration(
                  hintText: 'Enter the location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 32,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: widget.toLocation,
                decoration: const InputDecoration(
                  hintText: 'Enter Destination',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: InkWell(
              onTap: () {
                ULocationProvider.updateFromLocation(widget.fromLocation.text);
                ULocationProvider.updatetoLocation(widget.toLocation.text);
                Navigator.pop(context);
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
          ),
        ),
      ]),
    );
  }
}

class drawerListItem extends StatelessWidget {
  drawerListItem({
    super.key,
    required this.drawerIconName,
    required this.drawerTitleName,
  });

  IconData drawerIconName;
  String drawerTitleName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                drawerIconName,
                color: NavyColor,
                size: 28,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                drawerTitleName,
                style: TextStyle(color: NavyColor, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
