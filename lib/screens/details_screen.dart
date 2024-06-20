import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_ui/modular_ui.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the Details Screen'),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Back to Home',
              onPressed: () => context.go('/'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Page 1',
              onPressed: () => context.go('/page1'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Users',
              onPressed: () => context.go('/users'),
            ),
          ],
        ),
      ),
    );
  }
}
