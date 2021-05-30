import 'package:flutter/material.dart';
import 'package:test_assignment/cubit/users_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RetryMaterialButton extends StatelessWidget {
  const RetryMaterialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UsersCubit usersCubit = BlocProvider.of<UsersCubit>(context);
    return MaterialButton(
        child: const Text(
          "Обновить",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        color: const Color(0xf29b51e0),
        minWidth: 230.0,
        height: 38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          usersCubit.fetchUsers();
        });
  }
}
