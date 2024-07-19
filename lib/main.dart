import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import './core/configs/approutes.dart';
import './core/configs/appthemes.dart';
import './core/services/controller_service.dart';
import './core/services/storage_service.dart';
import './core/screens/home_screen.dart';

void main() async {
  // INITIALISE LOCALSTORAGE
  await Hive.initFlutter();
  await StorageService.instance.init();

  // RUN APP
  runApp(const MyApp());
}

/// JPLoft Todo App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Todo",
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      debugShowCheckedModeBanner: false,
      onInit: () => ControllerService.init(),
      onGenerateRoute: (settings) => AppRoutes.generatedRoutes(settings),
      home: const HomeScreen(),
    );
  }
}
