import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import '../../base/base_screen.dart';

import '../../../global/constants/colors.dart';
import '../../../global/utilities/size_helper.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(
        milliseconds: 700,
      ),
      onPressed: () {
        // TODO Implement sign-in logic
        Navigator.popAndPushNamed(context, BaseScreen.id);
      },
      child: Container(
        width: SizeHelper(context).width * 0.75,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: kPrimaryBlue,
        ),
        child: const Text(
          'SIGN IN',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
