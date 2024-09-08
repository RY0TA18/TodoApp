import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Map<int, String> tasks;
  final int index;

  const TaskTile({
    super.key,
    required this.tasks,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var taskId = tasks.keys.elementAt(index); // タスクのキーを取得
        var taskValue = tasks[taskId]; // タスクの値を取得
        print('Task ID: $taskId, Task Value: $taskValue'); // コンソールに出力
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('タスク'),
              content: Text(tasks[index]!),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // ダイアログを閉じる
                  },
                  child: const Text('閉じる'),
                ),
              ],
            );
          },
        );
      },
      child: ListTile(
        title: Text(tasks[index]!),
      ),
    );
  }
}