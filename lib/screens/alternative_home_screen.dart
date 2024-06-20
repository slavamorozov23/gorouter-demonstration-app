import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:modular_ui/modular_ui.dart';

class AlternativeHomeScreen extends StatelessWidget {
  const AlternativeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alternative Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is an Alternative Home Screen'),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Back to Home',
              onPressed: () => context.go('/'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Details',
              onPressed: () => context.go('/details'),
            ),
          ],
        ),
      ),
    );
  }
}
