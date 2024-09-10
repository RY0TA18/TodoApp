import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/todo_list.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  String todoText = '';
  final TodoService todoService = TodoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todoを追加'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Todo',
              ),
              onChanged: (String value) {
                setState(() {
                  todoText = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (todoText.isNotEmpty) {
                      todoService.addTask(todoText);
                      GoRouter.of(context).go('/');
                      if (kDebugMode) {
                        print(todoText);
                      } // 入力値を表示
                    }
                  },
                  child: const Text('追加'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/');
                  },
                  child: const Text('キャンセル'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
