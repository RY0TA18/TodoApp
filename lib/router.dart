import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/pages/add_todo_page.dart';
import 'package:my_todo/pages/todo_list_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => TodoListPage(),
    ),
    GoRoute(
      path: '/addTodoPage',
      builder: (BuildContext context, GoRouterState state) => const AddTodoPage(),
    ),
  ],
);