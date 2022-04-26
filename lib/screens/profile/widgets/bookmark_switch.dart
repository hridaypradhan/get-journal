import 'package:flutter/cupertino.dart';
import '../../../global/constants/colors.dart';

class BookmarkSwitch extends StatelessWidget {
  const BookmarkSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      thumbColor: kLightGreen,
      trackColor: kPrimaryBlue.withOpacity(0.7),
      activeColor: kPrimaryBlue,
      value: false,
      onChanged: (value) {},
    );
  }
}
