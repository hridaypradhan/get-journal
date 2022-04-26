import 'package:flutter/material.dart';

class BookmarkProvider extends ChangeNotifier {
  bool _bookmarksOn = false;

  void setBookmarkVisibility(bool newValue) {
    _bookmarksOn = newValue;
    notifyListeners();
  }

  bool get bookmarksOn => _bookmarksOn;
}
