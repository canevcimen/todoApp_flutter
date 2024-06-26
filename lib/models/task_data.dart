import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'call my honey'),
    Task(name: 'Go to lab'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
  final task = Task(name: newTaskTitle);
  _tasks.add(task);
  notifyListeners();
}

void updateTask(Task task)
{
 task.toggleDone();
 notifyListeners();
}
void deleteTask(Task task)
{
  _tasks.remove(task);
  notifyListeners();
}
}

