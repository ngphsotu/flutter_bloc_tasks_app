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
      child: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: taskslist
              .map(
                (task) => ExpansionPanelRadio(
                  value: task.id,
                  headerBuilder: (context, isOpen) => TaskTitle(task: task),
                  body: ListTile(
                    title: SelectableText.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Text\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: task.title),
                          const TextSpan(
                            text: '\n\nDecription\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: task.decription),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

//  Expanded(
//       child: ListView.builder(
//         itemCount: taskslist.length,
//         itemBuilder: (context, index) {
//           var task = taskslist[index];
//           return TaskTitle(task: task);
//         },
//       ),
//     );