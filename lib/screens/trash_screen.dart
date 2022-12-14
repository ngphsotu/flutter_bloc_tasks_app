import 'package:flutter/material.dart';

import '/models/task.dart';
import 'my_drawer_screen.dart';
import '/blocs/bloc_exports.dart';
import '/widgets/tasks_list.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  static const id = 'recycle_bin_screen';

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> taskslist = state.removedTasks;
        return Scaffold(
          appBar: AppBar(title: const Text('Trash')),
          drawer: const MyDrawer(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Chip(
                  label: taskslist.isEmpty || taskslist.length == 1
                      ? Text('${taskslist.length} Task Deleted')
                      : Text('${taskslist.length} Tasks Deleted'),
                ),
              ),
              TasksList(taskslist: taskslist),
            ],
          ),
        );
      },
    );
  }
}
