import 'package:flutter/material.dart';
import 'package:project_log/screens/home/home_route.dart';
import 'package:project_log/screens/home/home_view.dart';
import 'package:project_log/services/project_log_service/project_log.dart';
import 'package:project_log/services/project_log_service/project_log_service.dart';

class HomeController extends State<HomeRoute> {
  /// An instance of the [ProjectLogService] that provides an interface for
  /// retreiving and storing logs.
  ProjectLogService projectLogService = ProjectLogService();

  /// A list of [ProjectLog]s displayed in a list on the [HomeView].
  List<ProjectLog>? _projectLogs;

  List<ProjectLog>? get projectLogs => _projectLogs;

  @override
  void initState() {
    super.initState();

    _getProjectLogs();
  }

  /// Obtains a list of [ProjectLog]s from `SharedPreferences` via the
  /// [ProjectLogService].
  void _getProjectLogs() async {
    _projectLogs = await projectLogService.getProjectLogs();
    setState(() => _projectLogs);
  }

  @override
  Widget build(BuildContext context) => HomeView(this);
}
