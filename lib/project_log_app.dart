import 'package:flutter/material.dart';
import 'package:project_log/screens/home/home_route.dart';
import 'package:project_log/themes/dark_theme.dart';
import 'package:project_log/themes/light_theme.dart';

// This is the main class for the app.
class ProjectLogApp extends StatelessWidget {
  const ProjectLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This is the title of the app.
      title: 'Flutter Demo',
      // This flag disables the checked mode banner in the app.
      debugShowCheckedModeBanner: false,
      // This is the light theme for the app.
      theme: lightTheme,
      // This is the dark theme for the app.
      darkTheme: darkTheme,
      // This is the theme mode for the app. It can be either ThemeMode.system,
      // ThemeMode.light, or ThemeMode.dark.
      themeMode: ThemeMode.system,
      // This is the home route for the app.
      home: const HomeRoute(),
    );
  }
}
