import 'package:flutter/cupertino.dart';
import '../../../providers/bookmark_provider.dart';
import 'package:provider/provider.dart';
import '../../../global/constants/colors.dart';

class BookmarkSwitch extends StatelessWidget {
  const BookmarkSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bookmarkProvider = Provider.of<BookmarkProvider>(context);

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
