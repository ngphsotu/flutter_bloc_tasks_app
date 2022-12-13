import 'package:flutter/material.dart';
import 'package:flutter_bloc_tasks_app/screens/trash_screen.dart';
import 'package:flutter_bloc_tasks_app/screens/tasks_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case TasksScreen.id:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      case TrashScreen.id:
        return MaterialPageRoute(builder: (_) => const TrashScreen());
      default:
        return null;
    }
  }
}
