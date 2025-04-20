import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_project/Landing_page.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                  child: Container(
                    height: 450,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text('RSRTC LOGIN:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Enter username',
                                hintStyle: const TextStyle(color: Colors.white70),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: const Icon(Icons.email, color: Colors.white),
                            ),
                          )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                obscureText: true,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(

                                  hintText: 'Enter your password',
                                  hintStyle: const TextStyle(color: Colors.white70),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  suffixIcon: const Icon(Icons.key, color: Colors.white),
                                ),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [
                                Text('Forgot Password', style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],

                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {

                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Landing_page()));


                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  fixedSize: Size(350, 50), // Width: 300, Height: 50
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10), // Radius 10
                                  ),
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold, fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                          Padding(

                            padding: const EdgeInsets.only(top: 20),
                            child: Text("you don't have an account? SIGN UP", style: TextStyle(color: Colors.white),),
                          ),

                            ],
                          )

                      ),
                    )
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
