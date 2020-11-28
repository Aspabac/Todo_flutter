import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'play soccer'),
    Task(name: 'play game'),
    Task(name: 'play football'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
