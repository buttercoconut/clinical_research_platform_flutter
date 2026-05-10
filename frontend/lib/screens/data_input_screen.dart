import 'package:flutter/material.dart';
import '../models/patient.dart';
import '../services/api_service.dart';

class DataInputScreen extends StatefulWidget {
  const DataInputScreen({super.key});

  @override
  State<DataInputScreen> createState() => _DataInputScreenState();
}

class _DataInputScreenState extends State<DataInputScreen> {
  final _formKey = GlobalKey<FormState>();
  final _patient = Patient(id: '', name: '', age: 0, gender: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Input')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Patient ID'),
                onSaved: (v) => _patient.id = v ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (v) => _patient.name = v ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                onSaved: (v) => _patient.age = int.tryParse(v ?? '0') ?? 0,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Gender'),
                onSaved: (v) => _patient.gender = v ?? '',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Save Patient Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    _formKey.currentState?.save();
    ApiService().createPatient(_patient).then((_) {
      Navigator.pushNamed(context, '/progress');
    });
  }
}
