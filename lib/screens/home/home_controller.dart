import 'package:flutter/material.dart';
import 'package:project_log/screens/home/home_route.dart';
import 'package:project_log/screens/home/home_view.dart';

class HomeController extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) => HomeView(this);
}