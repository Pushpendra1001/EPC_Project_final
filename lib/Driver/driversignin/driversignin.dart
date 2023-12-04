// ignore_for_file: camel_case_types

import 'package:epc/Driver/driverregisteration/driverregistrationscreen.dart';
import 'package:epc/Driver/driververfication/driververification.dart';
import 'package:epc/Passenger/passengersignin/signinoptions.dart';
import 'package:epc/forgotpassword/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class driversignin extends StatefulWidget {
  const driversignin({super.key});

  @override
  State<driversignin> createState() => driversigninState();
}

class driversigninState extends State<driversignin> {
  bool _isObscured = true;
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              )),
        ),
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
                      'Welcome back',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
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
                      height: 12,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                          obscureText: _isObscured,
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 14),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF0F0F0),
                              contentPadding: const EdgeInsets.only(bottom: 1),
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
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const forgotpassword(),
                                ),
                              );
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: Colors.white,
                                  // decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  decorationThickness: 1.0,
                                  fontSize: 13),
                            ))),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      height: 52,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const driverVerification(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const driverregistrationscreen(),
                            ),
                          );
                        },
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(color: Colors.white)),
                            TextSpan(
                                text: "Register",
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
              const signinoptions()
            ],
          ),
        ),
      ),
    );
  }
}
