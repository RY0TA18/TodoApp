import 'package:flutter/material.dart';
import 'package:my_todo/components/bottom_navigationbar.dart';

class DoneTodoPage extends StatelessWidget {
  const DoneTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Todo List'),
      ),
      body: const Center(
        child: Text('Done Todo List'),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 1,
      ),
    );
  }
}