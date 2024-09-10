import 'package:flutter/material.dart';
import 'package:my_todo/components/app_bar.dart';
import 'package:my_todo/components/bottom_navigationbar.dart';

class DoneTodoPage extends StatelessWidget {
  const DoneTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TodoAppBar(),
      body: Center(
        child: Text('Done Todo List'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
      ),
    );
  }
}