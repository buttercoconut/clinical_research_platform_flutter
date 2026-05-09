import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/patient_provider.dart';
import 'screens/enrollment_screen.dart';
import 'screens/data_entry_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => PatientProvider(apiService: ApiService()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinical Research Platform',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/enroll',
      routes: {
        '/enroll': (_) => const EnrollmentScreen(),
        '/data': (_) => const DataEntryScreen(),
        '/dashboard': (_) => const DashboardScreen(),
      },
    );
  }
}
