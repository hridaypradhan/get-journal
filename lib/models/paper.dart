import 'dart:convert';

import 'package:flutter/foundation.dart';

class Paper {
  String title;
  List<String> authors;
  bool saved;
  
  Paper({
    required this.title,
    required this.authors,
    required this.saved,
  });

  Paper copyWith({
    String? title,
    List<String>? authors,
    bool? saved,
  }) {
    return Paper(
      title: title ?? this.title,
      authors: authors ?? this.authors,
      saved: saved ?? this.saved,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'authors': authors,
      'saved': saved,
    };
  }

  factory Paper.fromMap(Map<String, dynamic> map) {
    return Paper(
      title: map['title'] ?? '',
      authors: List<String>.from(map['authors']),
      saved: map['saved'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Paper.fromJson(String source) => Paper.fromMap(json.decode(source));

  @override
  String toString() => 'Paper(title: $title, authors: $authors, saved: $saved)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Paper &&
        other.title == title &&
        listEquals(other.authors, authors) &&
        other.saved == saved;
  }

  @override
  int get hashCode => title.hashCode ^ authors.hashCode ^ saved.hashCode;
}
