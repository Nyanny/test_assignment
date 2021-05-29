import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_sliver_appbar.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return CustomScrollView(
      slivers: <Widget>[
        // TODO Сделать с помощью ScrollController разные тексты в AppBar(или через LayoutBuilder)
        // https://stackoverflow.com/questions/50909791/flutter-change-text-when-flexiblespacebar-is-collapsed
        MySliverAppBar(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, index) => ListTile(
              title: Text("Index: $index"),
            ),
          ),
        ),
      ],
    );
  }
}
