import 'package:flutter/material.dart';

import '/models/task.dart';
import '/widgets/tasks_list.dart';
import '/blocs/bloc_exports.dart';

class CompletedTasksScreen extends StatelessWidget {
  static const id = 'completed_tasks_screen';

  const CompletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> taskslist = state.completedTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: taskslist.isEmpty || taskslist.length == 1
                    ? Text('${taskslist.length} Task Completed')
                    : Text('${taskslist.length} Tasks Completed'),
              ),
            ),
            TasksList(taskslist: taskslist),
          ],
        );
      },
    );
  }
}
