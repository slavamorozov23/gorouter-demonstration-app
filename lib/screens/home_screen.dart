import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:provider/provider.dart';
import '../auth_state.dart';
import '../routes.dart';

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
              onPressed: () => Page1Route().go(context),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Users',
              onPressed: () => UsersRoute(filter: '').go(context),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Details',
              onPressed: () => DetailsRoute().go(context),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Alternative Home',
              onPressed: () => AlternativeHomeRoute().go(context),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Go to Users with Filter',
              onPressed: () => UsersRoute(filter: 'special user').go(context),
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Trigger Custom Error',
              onPressed: () {
                context.go('/error_example');
              },
            ),
          ],
        ),
      ),
    );
  }
}
