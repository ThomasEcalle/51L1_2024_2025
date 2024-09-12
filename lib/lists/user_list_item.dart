import 'package:al1_2024/lists/user.dart';
import 'package:flutter/material.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    print('Building user ${user.firstName}');

    return ListTile(
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: Text(user.address),
      leading: const Icon(Icons.person),
      trailing: const Icon(Icons.navigate_next),
      onTap: () {
        print('User ${user.firstName} tapped');
      },
    );

    // return Container(
    //   height: 80,
    //   width: 200,
    //   decoration: BoxDecoration(
    //     border: Border.all(
    //       width: 1,
    //       color: Colors.black,
    //     ),
    //   ),
    //   child: Column(
    //     children: [
    //       Text(
    //         '${user.firstName} ${user.lastName}',
    //       ),
    //       const SizedBox(height: 10),
    //       Text(
    //         user.address,
    //       ),
    //     ],
    //   ),
    // );
  }
}
