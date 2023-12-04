import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epc/Driver/driververfication/Profilephoto.dart';
import 'package:epc/Driver/driververfication/driverLicense.dart';

import 'package:flutter/foundation.dart';

class DriverModel {
  int driverId;
  String fullName;
  Uint8List? ProfileImage;
  Uint8List? DriverLicense;
  Uint8List? Proof_of_work;
  Uint8List? Vechile_insurance;
  Uint8List? Vechile_information;
  String Language;
  int MobileNumber;
  String DriverEmail;

  DriverModel(
      {required this.driverId,
      required this.fullName,
      required this.ProfileImage,
      required this.DriverLicense,
      required this.Proof_of_work,
      required this.Vechile_insurance,
      required this.Vechile_information,
      required this.Language,
      required this.MobileNumber,
      required this.DriverEmail});

  toJson() {
    return {
      "id": driverId,
      "FullName": fullName,
      'ProfilePhoto': profilePhoto,
      'MobileNumber': MobileNumber,
      "DrivingLicense": driverLicense,
      "proof_of_work": Proof_of_work,
      "Vechile_insurance": Vechile_insurance,
      "Vechile_information": Vechile_information,
      "Language": Language,
      "mobileNumber": MobileNumber,
      "DriverEmail": DriverEmail,
    };
  }

  void updateUser(String newName, Uint8List newImage) {
    fullName = newName;
  }

  factory DriverModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final Driverdata = document.data()!;
    return DriverModel(
      driverId: Driverdata["driverId"],
      fullName: Driverdata["DriverEmail"],
      ProfileImage: Driverdata["DriverEmail"],
      DriverLicense: Driverdata["DriverEmail"],
      Proof_of_work: Driverdata["DriverEmail"],
      Vechile_insurance: Driverdata["DriverEmail"],
      Language: Driverdata["DriverEmail"],
      Vechile_information: Driverdata["DriverEmail"],
      MobileNumber: Driverdata["DriverEmail"],
      DriverEmail: Driverdata["DriverEmail"],
    );
  }
}
