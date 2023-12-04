import 'package:epc/Passenger/passengersignin/passengersignin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  final _emailcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose;
    super.dispose();
  }

  Future PasswordReset()async{

    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailcontroller.text.trim());
      Get.snackbar('Success', 'Please Check your email and reset the password and signin to continue',
      colorText: Colors.green,);
      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const passengersignin(),
                      ),
                    );
    } on FirebaseAuthException catch(e){
      Get.snackbar('Error', '$e');

    }
    

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  
                  Color(0xFF38365D),
                  Color(0xFF0A94B0),
                ],
                stops: [0.45,0.8]
              )
            ),
      child: SafeArea
      (child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(onPressed: (){
                Get.back();
              }, icon: const Icon(Icons.arrow_back,
              size: 30,
              color: Colors.white,)),
            ),
            body: Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                children: [
                  const Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold

                    ),),
                    const SizedBox(height: 10,),
                    const Text('Enter your email account to reset password !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold

                    ),),

                    const SizedBox(height: 200,),

                    SizedBox(
            height: 50,
            child: TextFormField(
              
              controller: _emailcontroller,
              style: TextStyle(color: Colors.grey.shade600,
            
              fontSize: 14),
              
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFF0F0F0),
                contentPadding: EdgeInsets.only(bottom: 1),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.grey,

                ),
                prefixIcon: Icon(Icons.email_outlined,
                size: 20,
                color: Colors.grey,),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Color.fromARGB(221, 44, 42, 42)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0,
                  color:Colors.white)
                )
                
              )
            ),
          ),

          const SizedBox(height: 15,),

          SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: PasswordReset,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                    
                  ), child: const Text('Continue',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),),
                  ),
                ),
                ],
              ),
            ),
      )),
    );
  }
}