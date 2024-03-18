import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sugarsense/input.dart';

void main() {
  runApp(const MyApp());
}

// MyApp class represents the root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // GetMaterialApp widget provides the Material Design specific functionalities to the app
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Disables debug banner in the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 231, 95, 71)),
        useMaterial3: true, // Enables Material 3 theming
      ),
      home: const Homepage(),
    );
  }
}
