import 'package:flutter/material.dart';

import '/models/task.dart';
import '/blocs/bloc_exports.dart';

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
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isDone,
              onChanged: (value) {
                context.read<TasksBloc>().add(UpdateTask(task: task));
              },
            ),
            onLongPress: () =>
                context.read<TasksBloc>().add(DeleteTask(task: task)),
          );
        },
      ),
    );
  }
}
