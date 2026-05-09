import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/patient_provider.dart';

class PatientProviderWidget extends StatelessWidget {
  final Widget child;
  const PatientProviderWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PatientProvider(apiService: ApiService()),
      child: child,
    );
  }
}
