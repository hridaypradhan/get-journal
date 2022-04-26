import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../services/paper_service.dart';

import '../models/paper.dart';

class PaperProvider extends ChangeNotifier {
  final PaperService _paperService = PaperService();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Paper> _searchResults = [], _bookmarkedPapers = [];
  bool _bookmarksOn = false;

  checkIfBookmarked(Paper paper) {
    for (Paper bookmark in _bookmarkedPapers) {
      if (paper.pdfLink == bookmark.pdfLink) {
        return true;
      }
    }
    return false;
  }

  searchForPapers(String query) async {
    _searchResults = await _paperService.queryPapers(query);
    _bookmarksOn = false;
    notifyListeners();
  }

  void setBookmarkVisibility(bool newValue) {
    _bookmarksOn = newValue;
    notifyListeners();
  }

  bool get bookmarksOn => _bookmarksOn;
  List<Paper> get searchResults => _searchResults;
  List<Paper> get bookmarkedPapers => _bookmarkedPapers;
}
