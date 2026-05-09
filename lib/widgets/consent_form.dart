import 'package:flutter/material.dart';

class ConsentForm extends StatelessWidget {
  const ConsentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Consent Text Here', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Text('Signature: ____________________'),
        ],
      ),
    );
  }
}
