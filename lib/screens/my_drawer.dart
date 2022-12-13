import 'package:flutter/material.dart';
import 'package:flutter_bloc_tasks_app/screens/recycle_bin.dart';
import 'package:flutter_bloc_tasks_app/screens/tasks_screen.dart';

import '../blocs/bloc_exports.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.teal[100],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              color: Colors.teal[400],
              child: Text(
                'Task Drawer',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(TasksScreen.id),
                  child: ListTile(
                    title: const Text('My Tasks'),
                    leading: const Icon(Icons.folder_special),
                    trailing: Text('${state.allTasks.length}'),
                  ),
                );
              },
            ),
            const Divider(),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(RecycleBin.id),
                  child: ListTile(
                    title: const Text('Recycle Bin'),
                    leading: const Icon(Icons.delete),
                    trailing: Text('${state.removedTasks.length}'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
