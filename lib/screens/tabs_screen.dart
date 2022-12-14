import 'package:flutter/material.dart';

import 'add_task_screen.dart';
import 'my_drawer_screen.dart';
import 'pending_tasks_screen.dart';
import 'favorite_tasks_screen.dart';
import 'completed_tasks_screen.dart';

class TabsScreen extends StatefulWidget {
  static const id = 'tabs_screen';

  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _selectPageIndex = 0;

  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName': const PendingTasksScreen(), 'title': 'Pending Tasks'},
    {'pageName': const CompletedTasksScreen(), 'title': 'Completed Tasks'},
    {'pageName': const FavoriteTasksScreen(), 'title': 'Favorite Tasks'}
  ];

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const AddTaskScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDetails[_selectPageIndex]['title']),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _addTask(context),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: _pageDetails[_selectPageIndex]['pageName'],
      floatingActionButton: _selectPageIndex == 0
          ? FloatingActionButton(
              tooltip: 'Add Task',
              child: const Icon(Icons.add),
              onPressed: () => _addTask(context),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectPageIndex,
        onTap: (index) {
          setState(() {
            _selectPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.incomplete_circle_sharp),
            label: 'Pending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Completed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
