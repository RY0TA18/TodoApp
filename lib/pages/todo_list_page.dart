import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/todo_list.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: 
        ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(tasks[index]),
            );
          },
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