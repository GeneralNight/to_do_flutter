import 'package:flutter/material.dart';

class Task {
  int id;
  String name;
  bool done;

  Task({required this.id,required this.name, required this.done});
}

class TasksList extends ChangeNotifier{

  static TasksList tasksList =TasksList(tasks: []);

  List<Task> tasks;

  addTask(String taskName) {
    int taskId = tasks.isNotEmpty ? tasks.last.id + 1 : 1;
    final task = Task(id: taskId, name: taskName, done: false);
    tasks = [...tasks, task];
    notifyListeners();
  }

  handleTask(int taskId) {
    final task = tasks.where((task) => task.id == taskId).first;
    task.done = !task.done;
    notifyListeners();
  }

  removeTask(int taskId) {
    tasks.removeWhere((task) => task.id == taskId);
    notifyListeners();
  }

  TasksList({required this.tasks});
}