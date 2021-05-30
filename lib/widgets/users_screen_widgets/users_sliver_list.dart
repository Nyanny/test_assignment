import 'package:flutter/material.dart';

import 'custom_icons.dart';

class UsersSliverList extends StatelessWidget {
  final List<dynamic> usersList;
  const UsersSliverList({Key? key, required this.usersList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          padding: EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: const Icon(CustomIcons.UserCircle,
                size: 50, color: Color(0xffBBBBBD)),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  usersList[index].name,
                  // '${state.loadedUsers[index].name}',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  usersList[index].email,
                  // '${state.loadedUsers[index].email}',
                  style: const TextStyle(
                      color: Color(0xff8A8A8F),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Surf',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        childCount: usersList.length,
        // childCount: state.loadedUsers.length,
      ),
    );
  }
}
