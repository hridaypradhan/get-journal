import 'package:flutter/material.dart';

import '../../models/paper.dart';
import 'widgets/paper_widget.dart';

List<Paper> dummyPapers = [
  Paper(
    authors: ['Hriday Pradhan', 'Shivam Khanna'],
    title: 'The Unbearable Lightness of Being',
    saved: false,
  ),
  Paper(
    authors: ['Hriday Pradhan', 'Shivam Khanna'],
    title: 'Fasta Reader',
    saved: false,
  ),
  Paper(
    authors: ['Hriday Pradhan', 'Shivam Khanna'],
    title: 'Fasta Reader',
    saved: false,
  ),
  Paper(
    authors: ['Hriday Pradhan', 'Shivam Khanna'],
    title: 'Fasta Reader',
    saved: false,
  ),
  Paper(
    authors: ['Hriday Pradhan', 'Shivam Khanna'],
    title: 'Fasta Reader',
    saved: false,
  ),
  Paper(
    authors: ['Hriday Pradhan', 'Shivam Khanna'],
    title: 'Fasta Reader',
    saved: false,
  ),
];

class HomeScreen extends StatelessWidget {
  static const id = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: dummyPapers.length,
            itemBuilder: (context, index) => PaperWidget(
              paper: dummyPapers[index],
            ),
          ),
        ),
      ],
    );
  }
}
