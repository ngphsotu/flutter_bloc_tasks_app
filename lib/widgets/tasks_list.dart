import 'package:flutter/material.dart';

import 'task_title.dart';
import '/models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.taskslist,
  }) : super(key: key);

  final List<Task> taskslist;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskslist.length,
        itemBuilder: (context, index) {
          var task = taskslist[index];
          return TaskTitle(task: task);
        },
      ),
    );
  }
}
