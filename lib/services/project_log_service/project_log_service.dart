import 'dart:async';
import 'package:project_log/services/project_log_service/project_log.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This class provides an API for retrieving and saving project logs stored locally via SharedPreferences.
// The class will be a singleton. It will include a method used to retrieve project logs from SharedPreference that returns a List of `ProjectLog` instances.
class ProjectLogService {
  // This private constructor ensures that only one instance of the ProjectLogService class can be created.
  static final ProjectLogService _singleton = ProjectLogService._internal();

  // This factory method provides access to the singleton instance of the ProjectLogService class.
  factory ProjectLogService() {
    return _singleton;
  }

  // This private constructor is used to initialize the singleton instance of the ProjectLogService class.
  ProjectLogService._internal();

  // This method is used to retrieve project logs from SharedPreferences. It returns a List of `ProjectLog` instances.
  Future<List<ProjectLog>> getProjectLogs() async {
    // Get an instance of the SharedPreferences object.
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    // Get the list of project logs stored in SharedPreferences as a list of strings.
    List<String>? jsonProjectLogs =
        sharedPreferences.getStringList('project_logs');

    // If the list of project logs is null, return an empty list.
    if (jsonProjectLogs == null) {
      return [];
    }

    // Convert the list of strings to a list of `ProjectLog` instances.
    return jsonProjectLogs
        .map((jsonProjectLog) => ProjectLog.fromJson(jsonProjectLog))
        .toList();
  }

  // This method is used to save project logs to SharedPreferences. It takes a List of `ProjectLog` instances as input.
  void saveProjectLogs(List<ProjectLog> projectLogs) async {
    // Get an instance of the SharedPreferences object.
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    // Convert the list of `ProjectLog` instances to a list of strings.
    List<String> jsonProjectLogs =
        projectLogs.map((projectLog) => projectLog.toJson()).toList();

    // Save the list of strings to SharedPreferences under the key 'project_logs'.
    sharedPreferences.setStringList('project_logs', jsonProjectLogs);
  }
}
