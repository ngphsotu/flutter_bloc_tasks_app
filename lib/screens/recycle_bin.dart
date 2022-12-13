import 'package:flutter/material.dart';

import '../blocs/bloc_exports.dart';
import '../widgets/tasks_list.dart';
import 'my_drawer.dart';

class RecycleBin extends StatefulWidget {
  const RecycleBin({super.key});

  static const id = 'recycle_bin_screen';

  @override
  State<RecycleBin> createState() => _RecycleBinState();
}

class _RecycleBinState extends State<RecycleBin> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Recycle Bin'),
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
                label:
                    state.removedTasks.isEmpty || state.removedTasks.length == 1
                        ? Text('${state.removedTasks.length} Task Deleted')
                        : Text('${state.removedTasks.length} Tasks Deleted'),
              ),
            ),
            TasksList(taskslist: state.removedTasks),
          ],
        ),
      );
    });
  }
}
