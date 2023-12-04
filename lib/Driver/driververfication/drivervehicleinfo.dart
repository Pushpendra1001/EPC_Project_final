import 'dart:typed_data';

import 'package:epc/common/gradientColor.dart';
import 'package:epc/common/properties.dart';
import 'package:epc/model/imagePicker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:epc/provider/UserDataProvider.dart';

class vehicleInformation extends StatefulWidget {
  const vehicleInformation({super.key});

  @override
  State<vehicleInformation> createState() => _vehicleInformationState();
}

class _vehicleInformationState extends State<vehicleInformation> {
  TextEditingController vehicleNumber = TextEditingController();

  selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    context.read<UserDataProvider>().setProfileImage(img);
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
                              FocusScope.of(context).unfocus();
                              Future.delayed(
                                const Duration(milliseconds: 300),
                                () {
                                  Navigator.pop(context);
                                },
                              );
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
                            "Vehicle information",
                            style: TextStyle(fontSize: 28, color: white[0]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Upload your vehicle images minimum 2 with number plates ",
                            style: TextStyle(
                                color: white[0], fontSize: Headingsize[2]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () => selectImage(),
                              child: const CircleAvatar(
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
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextField(
                              style: TextStyle(color: white[0]),
                              controller: vehicleNumber,
                              decoration: InputDecoration(
                                  hintText: "Enter vechicle number",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: grey[3])),
                                  hintStyle: TextStyle(color: grey[1])),
                            ),
                          ),
                          const Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<UserDataProvider>()
                                    .setVehicleNumber(vehicleNumber.text);

                                FocusScope.of(context).unfocus();
                                Future.delayed(
                                    const Duration(milliseconds: 200), () {
                                  Navigator.pop(context);
                                });
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
