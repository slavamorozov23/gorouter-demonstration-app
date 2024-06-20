import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:provider/provider.dart';
import '../auth_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Provider.of<AuthState>(context, listen: false).logout();
              context.go('/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MUIPrimaryButton(
              text: 'Go to Page 1',
              onPressed: () => context.go('/page1'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Users',
              onPressed: () => context.go('/users'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Details',
              onPressed: () => context.go('/details'),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Alternative Home',
              onPressed: () => context.go('/alternative_home'),
            ),
          ],
        ),
      ),
    );
  }
}
