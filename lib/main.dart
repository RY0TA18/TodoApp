import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/router.dart';

void main() {
  runApp(const MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: 
        ListView(
          children: const <Widget>[
            ListTile(
              title: Text('Buy milk'),
            ),
            ListTile(
              title: Text('Buy eggs'),
            ),
            ListTile(
              title: Text('Buy bread'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            GoRouter.of(context).go('/addTodoPage');
          },
          child: const Icon(Icons.add),
        ),
    );
  }
}

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
