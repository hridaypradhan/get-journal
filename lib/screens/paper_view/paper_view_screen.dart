import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PaperViewScreen extends StatelessWidget {
  final String pdfLink;

  const PaperViewScreen({
    Key? key,
    required this.pdfLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfPdfViewer.network(pdfLink),
      ),
    );
  }
}
