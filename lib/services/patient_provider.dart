import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/api_service.dart';

class PatientProvider extends ChangeNotifier {
  final ApiService apiService;
  PatientProvider({required this.apiService});

  // Add state and methods for enrollment, consent, data entry
}
