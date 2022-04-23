import 'package:flutter/material.dart';
import 'package:get_journal/global/constants/colors.dart';
import 'package:get_journal/screens/landing/landing_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home/home_screen.dart';

void main() => runApp(const GetJournal());

class GetJournal extends StatelessWidget {
  const GetJournal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryColor: kPrimaryBlue,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              secondary: kPrimaryBlue,
            ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        LandingScreen.id: (context) => const LandingScreen(),
      },
    );
  }
}
