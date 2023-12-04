import 'dart:typed_data';
import 'package:epc/Driver/driververfication/preferenceLanguage.dart';
import 'package:flutter/material.dart';

class UserDataProvider extends ChangeNotifier {
  int _driverId = 0;
  String _fullName = "Username";
  Uint8List? _profileImage;
  Uint8List? _driverLicense;
  Uint8List? _proofOfWork;
  Uint8List? _vehicleInsurance;
  Uint8List? _vehicleInformation;
  String _vehicleNumber = "";
  languagetype _language = languagetype.English;
  int? _mobileNumber;
  String? _driverEmail;

  // Getters
  int get driverId => _driverId;
  String get fullName => _fullName;
  Uint8List? get profileImage => _profileImage;
  Uint8List? get driverLicense => _driverLicense;
  Uint8List? get proofOfWork => _proofOfWork;
  Uint8List? get vehicleInsurance => _vehicleInsurance;
  Uint8List? get vehicleInformation => _vehicleInformation;
  String get VehicleNumber => _vehicleNumber;

  languagetype get language => _language;
  int? get mobileNumber => _mobileNumber;
  String? get driverEmail => _driverEmail;

  // Setters
  void setDriverId(int id) {
    _driverId = id;
    notifyListeners();
  }

  void setFullName(String name) {
    _fullName = name;
    notifyListeners();
  }

  void setProfileImage(Uint8List? image) {
    _profileImage = image;
    notifyListeners();
  }

  void setDriverLicense(Uint8List? license) {
    _driverLicense = license;
    notifyListeners();
  }

  void setProofOfWork(Uint8List? proofOfWork) {
    _proofOfWork = proofOfWork;
    notifyListeners();
  }

  void setVehicleInsurance(Uint8List? insurance) {
    _vehicleInsurance = insurance;
    notifyListeners();
  }

  void setVehicleInformation(Uint8List? information) {
    _vehicleInformation = information;
    notifyListeners();
  }

  void setLanguage(languagetype lang) {
    _language = lang;
    notifyListeners();
  }

  void setVehicleNumber(String VehicleNumber) {
    _vehicleNumber = VehicleNumber;
    notifyListeners();
  }

  void setMobileNumber(int? number) {
    _mobileNumber = number;
    notifyListeners();
  }

  void setDriverEmail(String? email) {
    _driverEmail = email;
    notifyListeners();
  }
}
