import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

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
            const TextField(
              decoration: InputDecoration(
                labelText: 'Todo',
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/');
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