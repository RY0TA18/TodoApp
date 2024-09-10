import 'package:shared_preferences/shared_preferences.dart';

class TodoService {
  final String taskKey = 'tasks';

  Future<List<String>> loadTasks() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(taskKey) ?? [];
  }

  Future<void> saveTasks(List<String> tasks) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(taskKey, tasks);
  }
}