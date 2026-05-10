import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/study.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  List<Study> _studies = [];

  @override
  void initState() {
    super.initState();
    _loadStudies();
  }

  void _loadStudies() async {
    final studies = await ApiService().getStudies();
    setState(() {
      _studies = studies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Study Progress')),
      body: ListView.builder(
        itemCount: _studies.length,
        itemBuilder: (context, index) {
          final study = _studies[index];
          return ListTile(
            title: Text(study.title),
            subtitle: Text('Participants: ${study.participantCount}'),
            trailing: Text('${study.progress}%'),
          );
        },
      ),
    );
  }
}
