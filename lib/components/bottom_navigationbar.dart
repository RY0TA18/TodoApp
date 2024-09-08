import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: '現在のタスク',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.done_all),
          label: '終了済みタスク',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '設定',
        ),
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        if (index == 0) {
          GoRouter.of(context).go('/');
        } else if (index == 1) {
          GoRouter.of(context).go('/doneTodoPage');
        } else if (index == 2) {
          GoRouter.of(context).go('/settingsPage');
        }
      },
    );
  }
}