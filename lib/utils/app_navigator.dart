import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/patient_provider.dart';
import '../screens/enrollment_screen.dart';
import '../screens/data_entry_screen.dart';
import '../screens/dashboard_screen.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PatientProvider>(
      builder: (_, provider, __) {
        return Navigator(
          onGenerateRoute: (settings) {
            Widget page;
            switch (settings.name) {
              case '/enroll':
                page = const EnrollmentScreen();
                break;
              case '/data':
                page = const DataEntryScreen();
                break;
              case '/dashboard':
                page = const DashboardScreen();
                break;
              default:
                page = const EnrollmentScreen();
            }
            return MaterialPageRoute(builder: (_) => page);
          },
        );
      },
    );
  }
}
