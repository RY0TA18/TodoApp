import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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