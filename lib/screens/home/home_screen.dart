import 'package:flutter/material.dart';
import 'package:get_journal/global/widgets/gradient_scaffold.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GradientScaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
