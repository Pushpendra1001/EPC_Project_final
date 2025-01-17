import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../authentication_repositary/authentication_repo.dart';
import '../model/user_model.dart';
import '../user_repositary/user_repositary.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  final auth = AuthenticationRepositary.instance;
  final userRepo = Get.put(UserRepositary());

  Future<void> registerUser(String email, String password)async{
    String? error = AuthenticationRepositary.instance.createUserWithEmailandPassword(email, password) as String?;
    if (error!= null){
      Get.showSnackbar(const GetSnackBar(message: 'naman',));
    }

    // AuthenticationRepositary.instance.createUserWithEmailandPassword(email, password);
  }

  Future <void> createUser(UserModel user)async{
    await userRepo.createUser(user);
    // Get.to(()=>otpscreen());
    // phoneAuthentication(user.phoneNo);
    // auth.setInitialScreen(auth.firebaseUser as User?);
     
  }

  void phoneAuthentication(String phoneNo){
    AuthenticationRepositary.instance.phoneAuthentication(phoneNo);
  }


}