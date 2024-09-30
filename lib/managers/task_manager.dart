import '../models/task_model.dart';

class TaskManager {
  List<Task> tasks = [];

  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  void updateTaskStatus(Task task, bool isCompleted) {
    task.isCompleted = isCompleted;
    _reorderTasks();
  }

  void deleteTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
    }
  }

  void _reorderTasks() {
    tasks.sort((a, b) {
      if (a.isCompleted && !b.isCompleted) return 1;
      if (!a.isCompleted && b.isCompleted) return -1;
      return 0;
    });
  }
}
