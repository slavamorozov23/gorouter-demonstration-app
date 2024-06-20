import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_ui/modular_ui.dart';

import 'package:modular_ui/modular_ui.dart';

class UserScreen extends StatelessWidget {
  final String? id;

  const UserScreen({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User ID: $id'),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Back to Users',
              onPressed: () => context.go('/users'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Back to Home',
              onPressed: () => context.go('/'),
            ),
          ],
        ),
      ),
    );
  }
}
