import 'package:flutter/material.dart';

import 'drawer.dart';
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
        return Scaffold(
          appBar: AppBar(
            title: const Text('Trash'),
            // actions: [
            //   IconButton(
            //     onPressed: () {},
            //     icon: const Icon(Icons.add),
            //   ),
            // ],
            // leading: const BackButton(),
          ),
          drawer: const MyDrawer(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Chip(
                  label: state.removedTasks.isEmpty ||
                          state.removedTasks.length == 1
                      ? Text('${state.removedTasks.length} Task Deleted')
                      : Text('${state.removedTasks.length} Tasks Deleted'),
                ),
              ),
              TasksList(taskslist: state.removedTasks),
            ],
          ),
        );
      },
    );
  }
}
