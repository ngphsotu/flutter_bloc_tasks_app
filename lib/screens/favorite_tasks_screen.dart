import 'package:flutter/material.dart';

import '/models/task.dart';
import '/widgets/tasks_list.dart';
import '/blocs/bloc_exports.dart';

class FavoriteTasksScreen extends StatelessWidget {
  const FavoriteTasksScreen({super.key});

  static const id = 'favorite_tasks_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> taskslist = state.favoriteTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: taskslist.isEmpty || taskslist.length == 1
                    ? Text('Favorite ${taskslist.length} Task')
                    : Text('Favorite ${taskslist.length} Tasks'),
              ),
            ),
            TasksList(taskslist: taskslist),
          ],
        );
      },
    );
  }
}
