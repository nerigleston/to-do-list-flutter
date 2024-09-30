class Task {
  String title;
  bool isCompleted;
  DateTime createdAt;

  Task({
    required this.title,
    this.isCompleted = false,
    DateTime? createdAt,
  }) : this.createdAt = createdAt ?? DateTime.now();
}
