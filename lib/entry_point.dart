import 'package:basic_flutter_app/constants/tab_constants.dart';
import 'package:basic_flutter_app/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    final userController = Provider.of<UserController>(context, listen: false);
    userController.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Basic Flutter App'),
          bottom: TabBar(
            tabs: tabs.map((tab) => tab.keys.first).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((tab) => tab.values.first).toList(),
        ),
      ),
    );
  }
}
