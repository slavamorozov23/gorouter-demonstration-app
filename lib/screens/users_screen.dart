import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/user.dart';

final List<User> users = [
  User(
    id: '1',
    name: 'Alice',
    birthDate: DateTime(1990, 5, 20),
    friends: ['2', '3'],
  ),
  User(
    id: '2',
    name: 'Bob',
    birthDate: DateTime(1985, 3, 15),
    friends: ['1'],
  ),
  User(
    id: '3',
    name: 'Charlie (special user)',
    birthDate: DateTime(1992, 8, 30),
    friends: ['1'],
  ),
];

class UsersScreen extends StatelessWidget {
  final String? filter;

  const UsersScreen({super.key, this.filter});

  @override
  Widget build(BuildContext context) {
    final filteredUsers = filter == null
        ? users
        : users.where((user) => user.name.contains(filter!)).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Users Screen')),
      body: ListView.builder(
        itemCount: filteredUsers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filteredUsers[index].name),
            onTap: () => context.go('/users/${filteredUsers[index].id}'),
          );
        },
      ),
    );
  }
}
