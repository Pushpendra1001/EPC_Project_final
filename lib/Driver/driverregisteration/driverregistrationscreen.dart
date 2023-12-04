import 'package:epc/Passenger/passengersignin/passengersignin.dart';
import 'package:epc/Passenger/passengersignin/signinoptions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/signupcontroller.dart';
import '../../model/user_model.dart';
// import '../passengersignin/signinoptions.dart';

class driverregistrationscreen extends StatefulWidget {
  const driverregistrationscreen({super.key});

  @override
  State<driverregistrationscreen> createState() =>
      driverregistrationscreenState();
}

class driverregistrationscreenState extends State<driverregistrationscreen> {
  final controller = Get.put(SignUpController());
  bool _isObscured = true;
  bool _isChecked = false;
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
                stops: [
              0.45,
              0.8
            ])),
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Let\'s sign you in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'It’s easy! just take a minute to fill.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 14),
                              controller: controller.fullName,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF0F0F0),
                                  contentPadding: EdgeInsets.only(bottom: 1),
                                  hintText: 'Full Name',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(221, 44, 42, 42)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.0, color: Colors.white)))),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                              controller: controller.email,
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 14),
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF0F0F0),
                                  contentPadding: EdgeInsets.only(bottom: 1),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(221, 44, 42, 42)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.0, color: Colors.white)))),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                              controller: controller.phoneNo,
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 14),
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF0F0F0),
                                  contentPadding: EdgeInsets.only(bottom: 1),
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(221, 44, 42, 42)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.0, color: Colors.white)))),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                              controller: controller.password,
                              obscureText: _isObscured,
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 14),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xFFF0F0F0),
                                  contentPadding:
                                      const EdgeInsets.only(bottom: 1),
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscured
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscured = !_isObscured;
                                      });
                                    },
                                  ),
                                  border: const OutlineInputBorder(),
                                  labelStyle: const TextStyle(
                                      color: Color.fromARGB(221, 44, 42, 42)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.0, color: Colors.white)))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isChecked = !_isChecked;
                                });
                              },
                              child: Container(
                                width: 16.0, // Adjust the size as needed
                                height: 16.0, // Adjust the size as needed
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        _isChecked ? Colors.white : Colors.grey,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: _isChecked
                                      ? Colors.white
                                      : null, // Fill with white when checked
                                ),
                                child: _isChecked
                                    ? const Icon(
                                        Icons.check,
                                        size:
                                            16.0, // Adjust the size of the checkmark icon
                                        color: Colors.grey,
                                      )
                                    : null,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Yes, I understand and agree to the Terms & Conditions',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 52,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              final user = UserModel(
                                  fullName: controller.fullName.text.trim(),
                                  email: controller.email.text.trim(),
                                  // fathername: '',
                                  phoneNo: controller.phoneNo.text.trim(),
                                  password: controller.password.text.trim());

                              SignUpController.instance.registerUser(
                                  controller.email.text.trim(),
                                  controller.password.text.trim());
                              SignUpController.instance.createUser(user);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              'Create Account',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const passengersignin(),
                                ),
                              );
                            },
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: "Already Registered ? ",
                                    style: TextStyle(color: Colors.white)),
                                TextSpan(
                                    text: "Signin",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ])),
                            ))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      )),
                      const SizedBox(
                        width: 1,
                      ),
                      const Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Expanded(
                          child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  const signinoptions(),
                ],
              ),
            ),
          ),
        ));
  }
}
