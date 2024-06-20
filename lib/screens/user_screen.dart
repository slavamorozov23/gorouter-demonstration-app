import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouterdemonstrationapp/screens/users_screen.dart';
import 'package:intl/intl.dart';
import 'package:modular_ui/modular_ui.dart';

class UserScreen extends StatelessWidget {
  final String? id;

  const UserScreen({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    final user = users.firstWhere((user) => user.id == id);

    return Scaffold(
      appBar: AppBar(title: Text('${user.name}\'s Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${user.name}'),
            Text('Birth Date: ${DateFormat.yMMMd().format(user.birthDate)}'),
            const Text('Friends:'),
            Expanded(
              child: ListView.builder(
                itemCount: user.friends.length,
                itemBuilder: (context, index) {
                  final friendId = user.friends[index];
                  final friend =
                      users.firstWhere((user) => user.id == friendId);
                  return ListTile(
                    title: Text(friend.name),
                    onTap: () => context.go('/users/$friendId'),
                  );
                },
              ),
            ),
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
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
