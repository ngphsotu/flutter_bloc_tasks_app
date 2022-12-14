import 'package:flutter/material.dart';

import '/models/task.dart';
import '/widgets/tasks_list.dart';
import '/blocs/bloc_exports.dart';

class PendingTasksScreen extends StatelessWidget {
  const PendingTasksScreen({super.key});

  static const id = 'pending_tasks_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> taskslist = state.pendingTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: taskslist.isEmpty || taskslist.length == 1
                    ? Text(
                        '${taskslist.length} Pending | ${state.completedTasks.length} Completed')
                    : Text('Pending ${taskslist.length} Tasks'),
              ),
            ),
            TasksList(taskslist: taskslist),
          ],
        );
      },
    );
  }
}
