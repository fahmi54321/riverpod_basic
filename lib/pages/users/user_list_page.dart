import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/users/users_providers.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 11 buat provider watch
    final userList = ref.watch(userListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),

      // todo 12 implement future provider (finish)
      body: userList.when(
        data: (users) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(user.id.toString()),
                ),
                title: Text(user.name),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemCount: users.length,
          );
        },
        error: (e, st) {
          return Center(
            child: Text(
              e.toString(),
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
