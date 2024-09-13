import 'package:al1_2024/webservices/app_user.dart';
import 'package:flutter/material.dart';

class AppUserListItem extends StatelessWidget {
  const AppUserListItem({
    super.key,
    required this.user,
  });

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: Text(user.email ?? ''),
    );
  }
}
