import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../auth_state.dart';
import '../routes.dart';
import 'package:modular_ui/modular_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MUIPrimaryButton(
              text: 'Login',
              onPressed: () {
                Provider.of<AuthState>(context, listen: false).login();
                HomeRoute().go(context);
              },
            ),
            const SizedBox(height: 16),
            MUIPrimaryButton(
              text: 'Login as Super User',
              onPressed: () {
                Provider.of<AuthState>(context, listen: false)
                    .login(superUser: true);
                HomeRoute().go(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
