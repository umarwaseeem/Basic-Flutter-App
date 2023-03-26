import 'package:basic_flutter_app/screens/login_tab_screen.dart';
import 'package:flutter/material.dart';

import '../screens/users_tab_screen.dart';

List<Map<Tab, Widget>> tabs = [
  {
    const Tab(
      text: 'Users',
    ): const UsersTabScreen(),
  },
  {
    const Tab(
      text: 'Posts',
    ): const LoginTabScreen(),
  },
];
