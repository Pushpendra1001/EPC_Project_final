import 'package:epc/Passenger/passengerregister.dart/passengerregister.dart';
import 'package:epc/Passenger/passengersignin/passengersignin.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class passengerOnboard extends StatelessWidget {
  const passengerOnboard({super.key});

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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [const SizedBox(height: 10,),
              Container(
                height: 280,
                width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white70,
                  ),
                  
                  child: Lottie.network('https://lottie.host/d42edf7b-7a41-45c5-bca2-6b96bdba5d2f/KylKW86W5t.json')
                ),

                const SizedBox(height: 35,),
                const Text(
                  'Welcome Aboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10,),
                const Text('Arrive together, save together. Welcome to our carpooling community!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14
                ),),

                const SizedBox(height: 150,),

                Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              alignment:const Alignment(0,0.8),
              child: Row(
                children: [
                  Expanded(child: SizedBox(
                    height: 46,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        backgroundColor: Colors.white
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const passengerregisterscreen()));
                      },
                      child: const Text("Register",
                      style: TextStyle(
                        color: Colors.black
                      ))),
                  )),
                 
                  Expanded(child: SizedBox(
                    height: 46,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                  
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        backgroundColor: const Color(0xFF616161)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const passengersignin()));
                      }, child: const Text("Sign In",
                      style: TextStyle(
                        color: Colors.white
                      ),)),
                  ))
                ],
              ),
             )



              ],
            ),
          ),
        ),
      ));
  }
}