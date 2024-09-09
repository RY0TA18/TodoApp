import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/components/bottom_navigationbar.dart';
import 'package:my_todo/todo_list.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<String> tasks = [];
  final TodoService todoService = TodoService();

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final loadedTasks = await todoService.loadTasks();
    setState(() {
      tasks = loadedTasks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todoリスト'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                await todoService.removeTask(index);
                _loadTasks(); // タスクリストを再読み込み
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).go('/addTodoPage');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}