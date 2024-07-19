import 'package:flutter/material.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/core/screens/add_task_screen.dart';

import '../screens/home_screen.dart';

class AppRoutes {
  const AppRoutes._();

  /// ON GENERATED ROUTES
  static Route<dynamic>? generatedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AddTaskScreen.routeName:
        final task = settings.arguments as TaskModel?;
        return MaterialPageRoute(
          builder: (context) => AddTaskScreen(task: task),
        );

      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
