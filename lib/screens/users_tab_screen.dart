import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/user_controller.dart';

class UsersTabScreen extends StatelessWidget {
  const UsersTabScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<UserController>(
      builder: (context, userController, child) {
        if (userController.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        return RefreshIndicator(
          onRefresh: userController.getUsers,
          child: ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(userController.users[index]['name']),
                subtitle: Text(userController.users[index]['email']),
              );
            },
          ),
        );
      },
    );
  }
}
