import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/login_cubit.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context);
    return TextField(
      onChanged: (email) {
        loginCubit.loginUsernameChanged(username: email);
      },
      decoration: const InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
        ),
      ),
    );
  }
}
