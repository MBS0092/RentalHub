import 'package:flutter/material.dart';

import '../Constants/Color.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class ReportPage extends StatefulWidget {
  static const String id = "rep";
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  TextEditingController reportcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'Report',
            style: TextStyle(color: labelsText),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: labelsText),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Text(
              'Reason for Reporting',
              style: TextStyle(
                fontSize: 12.0,
                color: labelsText,
              ),
            ),
            SizedBox(height: 5.0),
            CustomTextField(
              hintText: 'Enter reason here',
              hintTextColor: hintText,
              textFieldBackgroundColor: textfieldbg,
              controller: reportcontroller,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Submit Report',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
