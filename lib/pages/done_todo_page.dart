// import 'package:flutter/material.dart';
// import 'package:my_todo/components/bottom_navigationbar.dart';
// import 'package:my_todo/components/tasktile.dart';
// import 'package:my_todo/todo_list.dart';

// class DoneTodoPage extends StatelessWidget {
//   const DoneTodoPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Done Todo List'),
//       ),
//       body: ListView.builder(
//         itemCount: doneTasks.length,
//         itemBuilder: (BuildContext context, int index) {
//           return TaskTile(tasks: doneTasks, index: index);
//         },
//       ),
//       bottomNavigationBar: const CustomBottomNavigationBar(
//         currentIndex: 1,
//       ),
//     );
//   }
// }