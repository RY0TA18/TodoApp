import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        actions: [
          // 戻るボタン
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              GoRouter.of(context).go('/');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Setting Page'),
      ),
    );
  }
}
