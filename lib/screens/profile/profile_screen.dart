import 'package:flutter/material.dart';
import 'package:get_journal/screens/landing/landing_screen.dart';
import 'package:get_journal/services/auth_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Sign Out'),
        onPressed: () {
          AuthService().signOut();
          Navigator.popAndPushNamed(context, LandingScreen.id);
        },
      ),
    );
  }
}
