import 'package:flutter/material.dart';
import '../widgets/consent_form.dart';

class EnrollmentScreen extends StatelessWidget {
  const EnrollmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Patient Enrollment')),
      body: const Center(
        child: Text('Enrollment form will be here. Use ConsentForm widget for eConsent.')
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ConsentScreen()),
          );
        },
      ),
    );
  }
}

class ConsentScreen extends StatelessWidget {
  const ConsentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('eConsent')),
      body: const ConsentForm(),
    );
  }
}
