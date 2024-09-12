import 'package:al1_2024/lists/user.dart';
import 'package:al1_2024/lists/user_list_item.dart';
import 'package:flutter/material.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _users = List.generate(100, (index) {
      return User(
        firstName: 'Toto $index',
        lastName: 'LastName $index',
        address: 'Address $index',
      );
    });

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: _users.length,
          separatorBuilder: (context, index) {
            if(index % 10 == 0) {
              return Container(
                height: 100,
                color: Colors.blue,
              );
            }

            return const SizedBox(height: 20);
          },
          itemBuilder: (context, index) {
            final user = _users[index];
            return UserListItem(user: user);
          },
        ),
      ),
    );
  }
}
