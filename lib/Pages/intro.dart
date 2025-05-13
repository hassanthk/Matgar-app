import 'package:flutter/material.dart';
import 'package:matgar_app/templates/intro_button.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 200),
            SizedBox(height: size.height / 7),
            Text(
              'Matgar',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Text(
              'YOUR ULTIMATE E-COMMERCE APP',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: size.height / 8),
            IntroButton(
              circ: 20,
              width: 80,
              height: 80,
              icon: Icon(
                Icons.arrow_right_alt,
                size: 35,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ontap: () {
                Navigator.pushReplacementNamed(context, 'Home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
