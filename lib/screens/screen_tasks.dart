import 'package:flutter/material.dart';
import 'package:flutter_bloc_tasks_app/screens/drawer.dart';

import '/models/task.dart';
import 'screen_addtask.dart';
import '/widgets/tasks_list.dart';
import '/blocs/bloc_exports.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  static const id = 'tasks_screen';

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const AddTaskScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(builder: (context, state) {
      List<Task> taskslist = state.allTasks;

      return Scaffold(
        appBar: AppBar(
          title: const Text('Tasks App'),
          actions: [
            IconButton(
              onPressed: () => _addTask(context),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        drawer: const MyDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: state.allTasks.isEmpty || state.allTasks.length == 1
                    ? Text('${state.allTasks.length} Task')
                    : Text('${state.allTasks.length} Tasks'),
              ),
            ),
            TasksList(taskslist: taskslist),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add Task',
          child: const Icon(Icons.add),
          onPressed: () => _addTask(context),
        ),
      );
    });
  }
}
