import 'package:flutter/material.dart';
import '../managers/task_manager.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final TaskManager taskManager = TaskManager();
  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    final taskTitle = _taskController.text.trim();
    if (taskTitle.isNotEmpty) {
      setState(() {
        taskManager.addTask(taskTitle);
        _taskController.clear();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('O nome da tarefa não pode estar em branco!')),
      );
    }
  }

  void _deleteTask(int index) {
    setState(() {
      taskManager.deleteTask(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: InputDecoration(
                      labelText: 'Nova Tarefa',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addTask,
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: taskManager.tasks.length,
              itemBuilder: (context, index) {
                final task = taskManager.tasks[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text(
                    'Criação: ${task.createdAt.hour.toString().padLeft(2, '0')}:${task.createdAt.minute.toString().padLeft(2, '0')}:${task.createdAt.second.toString().padLeft(2, '0')} - ${task.createdAt.day}/${task.createdAt.month}/${task.createdAt.year}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: task.isCompleted,
                        onChanged: (bool? value) {
                          setState(() {
                            taskManager.updateTaskStatus(task, value ?? false);
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteTask(index),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
