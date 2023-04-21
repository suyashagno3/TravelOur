import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 180, 191, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/image.png', // path to your image file
              height: 250,
            ),
            SizedBox(height: 20),
            Text('Travel Our',
                style: GoogleFonts.lobster(
                  textStyle: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                )),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // set the width of the button
              height: 40, // set the height of the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromRGBO(86, 77, 165, 1), // Background color
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
