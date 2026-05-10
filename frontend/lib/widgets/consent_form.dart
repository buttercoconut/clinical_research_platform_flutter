import 'package:flutter/material.dart';

class ConsentForm extends StatelessWidget {
  const ConsentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Consent Form',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          'I hereby consent to participate in this clinical study. I understand that my data will be used for research purposes and that I can withdraw at any time.',
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Checkbox(value: true, onChanged: (_) {}),
            const Text('I agree'),
          ],
        ),
      ],
    );
  }
}
