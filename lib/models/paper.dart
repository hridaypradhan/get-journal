import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:webfeed/domain/atom_item.dart';

class Paper {
  String title;
  List<String> authors;
  String pdfLink;

  Paper({
    required this.title,
    required this.authors,
    required this.pdfLink,
  });

  Paper copyWith({
    String? title,
    List<String>? authors,
    String? pdfLink,
  }) {
    return Paper(
      title: title ?? this.title,
      authors: authors ?? this.authors,
      pdfLink: pdfLink ?? this.pdfLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'authors': authors,
      'pdfLink': pdfLink,
    };
  }

  factory Paper.fromMap(Map<String, dynamic> map) {
    return Paper(
      title: map['title'] ?? '',
      authors: List<String>.from(map['authors']),
      pdfLink: map['pdfLink'] ?? '',
    );
  }

  factory Paper.fromAtomItem(AtomItem atomItem) {
    return Paper(
      title: atomItem.title ?? 'Title',
      pdfLink: atomItem.links?.first.href?.replaceFirst('abs', 'pdf') ??
          'google.com',
      authors: atomItem.authors?.map((e) => e.name ?? 'Author').toList() ?? [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Paper.fromJson(String source) => Paper.fromMap(json.decode(source));

  @override
  String toString() =>
      'Paper(title: $title, authors: $authors, pdfLink: $pdfLink)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Paper &&
        other.title == title &&
        listEquals(other.authors, authors) &&
        other.pdfLink == pdfLink;
  }

  @override
  int get hashCode => title.hashCode ^ authors.hashCode ^ pdfLink.hashCode;
}
