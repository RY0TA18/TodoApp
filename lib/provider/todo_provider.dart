import 'package:my_todo/pages/todo_list_page/todo_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoListProvider = StateNotifierProvider<TodoListNotifier, List<String>>(
  (ref) => TodoListNotifier(TodoService()), // TodoServiceを渡してTodoListNotifierを初期化
);

class TodoListNotifier extends StateNotifier<List<String>> {
  final TodoService _todoService;

  TodoListNotifier(this._todoService) : super([]);

  Future<void> loadTasks() async {
    state = await _todoService.loadTasks();
  }

  Future<void> addTask(String task) async {
    final tasks = state;
    tasks.add(task);
    await _todoService.saveTasks(tasks);
    state = tasks;
  }

  Future<void> removeTask(int index) async {
    final tasks = state;
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      state = List.from(tasks); // すぐにUIを更新
      await _todoService.saveTasks(tasks); // 非同期で保存
    }
  }
}