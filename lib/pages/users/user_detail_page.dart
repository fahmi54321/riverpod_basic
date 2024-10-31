// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:provider/pages/users/users_providers.dart';

class UserDetailPage extends ConsumerWidget {
  final int userId;
  const UserDetailPage({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 17 provider watch
    final user = ref.watch(userDetailProvider(userId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),

      // todo 17 implement future provider (finish)
      body: user.when(
        data: (user) {
          return ListView(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20.0,
            ),
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Divider(),
              UserInfo(
                iconData: Icons.account_circle,
                userInfo: user.username,
              ),
              const SizedBox(height: 10.0),
              UserInfo(
                iconData: Icons.email_rounded,
                userInfo: user.email,
              ),
              const SizedBox(height: 10.0),
              UserInfo(
                iconData: Icons.phone_enabled,
                userInfo: user.phone,
              ),
              const SizedBox(height: 10.0),
              UserInfo(
                iconData: Icons.web_rounded,
                userInfo: user.website,
              ),
            ],
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

class UserInfo extends StatelessWidget {
  final IconData iconData;
  final String userInfo;
  const UserInfo({
    Key? key,
    required this.iconData,
    required this.userInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
        ),
        const SizedBox(width: 10.0),
        Text(
          userInfo,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
