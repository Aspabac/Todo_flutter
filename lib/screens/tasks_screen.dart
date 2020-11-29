import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/screens/add_task_screen.dart';
import 'package:todo_flutter/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: Container(
        width: 100.0,
        height: 100.0,
        child: FloatingActionButton(
          foregroundColor: Colors.blueGrey,
          backgroundColor: Color(0xFF0A0E21),
          child: Icon(
            Icons.note,
            size: 50.0,
          ),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => AddTaskScreen((newTaskTitle) {
                      // setState(() {
                      //   tasks.add(Task(name: newTaskTitle));
                      // });
                      Navigator.pop(context);
                    }));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.sports_soccer,
                    size: 45.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Color(0xFF0A0E21),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Socker',
                  style: TextStyle(
                    color: Color(0xFF0A0E21),
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'You have ${Provider.of<TaskData>(context).taskCount} Tasks right now',
                  style: TextStyle(
                    color: Color(0xFF0A0E21),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Color(0xFF0A0E21),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
