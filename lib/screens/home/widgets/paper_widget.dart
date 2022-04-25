import 'package:flutter/material.dart';
import '../../../global/constants/colors.dart';

import '../../../models/paper.dart';

class PaperWidget extends StatelessWidget {
  final Paper paper;
  const PaperWidget({
    Key? key,
    required this.paper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Tooltip(
            message: paper.title,
            child: Text(
              paper.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 35.0,
              ),
            ),
          ),
          const Divider(
            color: kLightGreen,
            thickness: 1.8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_getAuthors(paper.authors)),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  !paper.saved
                      ? Icons.bookmark_add_outlined
                      : Icons.bookmark_added,
                  size: 35.0,
                  color: kLightGreen,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        border: Border.all(
          color: kPrimaryBlue,
          width: 3.0,
        ),
      ),
    );
  }

  String _getAuthors(List<String> authors) {
    String output = authors[0];
    if (authors.length > 1) {
      output += ', ${authors[1]}';
    }
    if (authors.length > 2) {
      output += ' etc.';
    }
    return output;
  }
}