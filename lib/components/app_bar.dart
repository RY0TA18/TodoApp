import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TodoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TodoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Todo App'),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            GoRouter.of(context).go('/settingPage');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size(double.infinity, 60.0);
  }
}