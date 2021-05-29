import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 200,
      title: Text("Пользователи", style: TextStyle(color: Colors.black, fontSize:  18),),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 16, bottom: 24),
        centerTitle: false,
        // title: Text("Пользователи", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
        title: Text("Пользователи", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,
    );
  }

}
