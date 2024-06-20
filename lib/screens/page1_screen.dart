import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_ui/modular_ui.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1 Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MUIPrimaryButton(
              text: 'Go to Page 2',
              onPressed: () => context.go('/page2'),
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
