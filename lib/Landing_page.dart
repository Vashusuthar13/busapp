import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_project/Login_page.dart';

class Landing_page extends StatelessWidget {
  const Landing_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/maintheme.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Text(
                    "Book easily.\nTravel safely.",
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text(
                      "The official way to ride with RSRTC.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        height: 2,

                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_page()));


                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(350, 50), // Width: 300, Height: 50
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Radius 10
                      ),
                    ),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold, fontSize: 20
                      ),
                    ),
                  )



                ],
              ),
            ),
          )
          // Other widgets go here (optional)
        ],
      ),

    );
  }
}
