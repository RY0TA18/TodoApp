import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/todo_list.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  String todoText = ''; // Step 1: 入力値を保持する変数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todoを追加'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child:Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Todo',
              ),
              onChanged: (String value) { // 引数として入力値を受け取る
                setState(() {
                  todoText = value; // 入力値で変数を更新
                });
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/');
                    tasks[tasks.length] = todoText; // Step 2: 入力値をリストに追加
                    print(todoText); // Step 3: 入力値を表示
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