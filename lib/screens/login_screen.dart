import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../auth_state.dart';
import 'package:modular_ui/modular_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Center(
        child: MUIPrimaryButton(
          text: 'Login',
          onPressed: () {
            Provider.of<AuthState>(context, listen: false).login();
            context.go('/');
          },
        ),
      ),
    );
  }
}
