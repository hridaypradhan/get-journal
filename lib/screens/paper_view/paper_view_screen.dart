import 'package:flutter/material.dart';
import '../../global/widgets/reusable_button.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PaperViewScreen extends StatefulWidget {
  final String pdfLink;

  const PaperViewScreen({
    Key? key,
    required this.pdfLink,
  }) : super(key: key);

  @override
  State<PaperViewScreen> createState() => _PaperViewScreenState();
}

class _PaperViewScreenState extends State<PaperViewScreen> {
  bool loadSuccess = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: loadSuccess
            ? SfPdfViewer.network(
                widget.pdfLink,
                onDocumentLoadFailed: (details) {
                  setState(
                    () {
                      loadSuccess = false;
                    },
                  );
                },
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'PDF view not available for this paper',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    ReusableButton(
                      text: 'GO TO LINK',
                      onTap: () async {
                        await launchUrlString(widget.pdfLink);
                      },
                    ),
                    const SizedBox(height: 15.0),
                    ReusableButton(
                      text: 'GO BACK',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
