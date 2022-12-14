import 'package:flutter/material.dart';
import 'package:flutter_bloc_tasks_app/screens/screen_trash.dart';
import 'package:flutter_bloc_tasks_app/screens/screen_tasks.dart';

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
