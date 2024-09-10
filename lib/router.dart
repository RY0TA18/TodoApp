import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/pages/add_todo_page.dart';
import 'package:my_todo/pages/done_todo_page.dart';
import 'package:my_todo/pages/todo_list_page.dart';
import 'package:my_todo/pages/setting_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const TodoListPage(),
    ),
    GoRoute(
      path: '/addTodoPage',
      builder: (BuildContext context, GoRouterState state) => const AddTodoPage(),
    ),
    GoRoute(
      path: '/doneTodoPage',
      builder: (BuildContext context, GoRouterState state) => const DoneTodoPage(),
    ),
    GoRoute(
      path: '/settingPage',
      builder: (BuildContext context, GoRouterState state) => const SettingPage(),
    ),
  ],
);