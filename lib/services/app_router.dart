import 'package:flutter/material.dart';

import '/screens/tabs_screen.dart';
import '/screens/trash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case TabsScreen.id:
        return MaterialPageRoute(builder: (_) => const TabsScreen());
      case TrashScreen.id:
        return MaterialPageRoute(builder: (_) => const TrashScreen());
      default:
        return null;
    }
  }
}
