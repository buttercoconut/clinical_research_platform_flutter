import 'package:flutter/material.dart';

class DataEntryScreen extends StatelessWidget {
  const DataEntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Entry')),
      body: const Center(child: Text('Data entry form placeholder')),
    );
  }
}
