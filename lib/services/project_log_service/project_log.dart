import 'dart:convert';

// This class represents a project log. It contains a log title, timestamp, and contents.
class ProjectLog {
  // This is the log title.
  final String logTitle;

  // This is the timestamp of the log.
  final DateTime timestamp;

  // This is the contents of the log.
  final String contents;

  // This constructor creates a new ProjectLog instance with the given log title, timestamp, and contents.
  ProjectLog({
    required this.logTitle,
    required this.timestamp,
    required this.contents,
  });

  // This factory method creates a new ProjectLog instance from a JSON string.
  factory ProjectLog.fromJson(String json) {
    // Decode the JSON string into a Map.
    Map<String, dynamic> jsonMap = jsonDecode(json);

    // Create a new ProjectLog instance with the values from the Map.
    return ProjectLog(
      logTitle: jsonMap['logTitle'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(jsonMap['timestamp']),
      contents: jsonMap['contents'],
    );
  }

  // This method converts the ProjectLog instance to a JSON string.
  String toJson() {
    // Create a Map with the values from the ProjectLog instance.
    Map<String, dynamic> jsonMap = {
      'logTitle': logTitle,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'contents': contents,
    };

    // Encode the Map to a JSON string.
    return jsonEncode(jsonMap);
  }
}
