import 'dart:typed_data';

import 'package:epc/common/gradientColor.dart';
import 'package:epc/common/properties.dart';
import 'package:epc/model/imagePicker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:epc/provider/UserDataProvider.dart';

class vehicleinsurancescreen extends StatefulWidget {
  const vehicleinsurancescreen({super.key});

  @override
  State<vehicleinsurancescreen> createState() => _vehicleinsurancescreenState();
}

class _vehicleinsurancescreenState extends State<vehicleinsurancescreen> {
  selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    context.read<UserDataProvider>().setVehicleInsurance(img);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: gradientscreen(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SafeArea(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 32,
                              color: white[0],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Vechile insurance",
                            style: TextStyle(fontSize: 28, color: white[0]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Upload your Vechile insurance and pollution documents ",
                            style: TextStyle(
                                color: white[0], fontSize: Headingsize[2]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () => selectImage(),
                            child: const Center(
                              child: CircleAvatar(
                                radius: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.cloud_upload,
                                      size: 64,
                                    ),
                                    Text("Upload"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                        ]))))));
  }
}
