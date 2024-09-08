import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/components/tasktile.dart';
import 'package:my_todo/todo_list.dart';
import 'package:my_todo/components/bottom_navigationbar.dart';

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
            return TaskTile(tasks: tasks, index: index);
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
        )
    );
  }
}

