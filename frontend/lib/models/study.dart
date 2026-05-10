class Study {
  String id;
  String title;
  int participantCount;
  int progress;

  Study({required this.id, required this.title, required this.participantCount, required this.progress});

  factory Study.fromJson(Map<String, dynamic> json) {
    return Study(
      id: json['id'] as String,
      title: json['title'] as String,
      participantCount: json['participant_count'] as int,
      progress: json['progress'] as int,
    );
  }
}
