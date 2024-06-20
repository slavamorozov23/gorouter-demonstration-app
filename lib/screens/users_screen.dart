import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UsersScreen extends StatelessWidget {
  final String? filter;

  const UsersScreen({super.key, this.filter});

  @override
  Widget build(BuildContext context) {
    final List<String> users = [
      'User1',
      'User2',
      'User3'
    ]; // Тестовые пользователи

    return Scaffold(
      appBar: AppBar(title: const Text('Users Screen')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]),
            onTap: () => context.go('/users/${users[index]}'),
          );
        },
      ),
    );
  }
}
