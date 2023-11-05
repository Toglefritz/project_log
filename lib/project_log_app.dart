import 'package:flutter/material.dart';
import 'package:project_log/screens/home/home_route.dart';

class ProjectLogApp extends StatelessWidget {
  const ProjectLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black12,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white12,
      ),
      home: const HomeRoute(),
    );
  }
}