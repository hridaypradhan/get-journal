import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../global/constants/colors.dart';
import '../../../providers/paper_provider.dart';

class BookmarkSwitch extends StatelessWidget {
  const BookmarkSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bookmarkProvider = Provider.of<PaperProvider>(context);

    return CupertinoSwitch(
      thumbColor: kLightGreen,
      trackColor: kPrimaryBlue.withOpacity(0.7),
      activeColor: kPrimaryBlue,
      value: bookmarkProvider.bookmarksOn,
      onChanged: (value) {
        bookmarkProvider.setBookmarkVisibility(value);
      },
    );
  }
}
