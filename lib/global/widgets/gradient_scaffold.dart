import 'package:flutter/material.dart';
import 'package:get_journal/global/constants/colors.dart';

class GradientScaffold extends StatelessWidget {
  final Widget body;

  const GradientScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: kPrimaryGradient),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
        ),
      ),
    );
  }
}
