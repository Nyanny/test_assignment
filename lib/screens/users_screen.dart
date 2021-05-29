import 'package:flutter/material.dart';
import 'package:test_assignment/widgets/users_screen_widgets/users_list_view.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Пользователи"),
      // ),
      body: UsersListView(),
    );
  }
}
