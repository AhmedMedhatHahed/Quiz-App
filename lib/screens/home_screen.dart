import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white,
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter!',
            style: GoogleFonts.abrilFatface(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xff29A19C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: switchScreen,
            icon: const Icon(
              Icons.arrow_right_alt_outlined,
              size: 24.0,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
