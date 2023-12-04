import 'dart:typed_data';

import 'package:epc/common/properties.dart';
import 'package:epc/common/gradientColor.dart';
import 'package:epc/model/imagePicker.dart';
import 'package:epc/provider/UserDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class profilePhoto extends StatefulWidget {
  const profilePhoto({super.key});

  @override
  State<profilePhoto> createState() => _profilePhotoState();
}

class _profilePhotoState extends State<profilePhoto> {
  final Name = TextEditingController();

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  Future.delayed(const Duration(milliseconds: 300), () {
                    Navigator.pop(context);
                  });
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
                "Profile Photo",
                style: TextStyle(fontSize: 28, color: white[0]),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    selectImage();
                  },
                  child: Stack(
                    children: [
                      Consumer<UserDataProvider>(
                        builder: (context, userDataProvider, child) {
                          return userDataProvider.profileImage != null
                              ? CircleAvatar(
                                  backgroundImage: MemoryImage(
                                      userDataProvider.profileImage!),
                                  radius: 64,
                                )
                              : CircleAvatar(
                                  radius: 64,
                                  child: Image.asset("assets/images/user.png"),
                                );
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                            radius: 18,
                            backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                            child: IconButton(
                                onPressed: () {
                                  selectImage();
                                },
                                icon: Icon(
                                  Icons.add_a_photo,
                                  size: 16,
                                  color: white[0],
                                ))),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: Name,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      hintText: "Display Name",
                      hintStyle: TextStyle(color: grey[1])),
                ),
              ),
              const Spacer(),
              Center(
                  child: InkWell(
                onTap: () {
                  String userName = Name.text;
                  context.read<UserDataProvider>().setFullName(userName);

                  FocusScope.of(context).unfocus();
                  Future.delayed(
                    const Duration(milliseconds: 300),
                    () {
                      Navigator.pop(context);
                    },
                  );
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 32,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 32,
                  ),
                ),
              )),
            ]),
          )),
    )));
  }
}
