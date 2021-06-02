import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/login_cubit.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context);
    return TextField(
      onChanged: (password) {
        print('First text field: $password');
        loginCubit.passwordUsernameChanged(password: password);
      },
      decoration: const InputDecoration(
        labelText: "Пароль",
        labelStyle: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
        ),
      ),
    );
  }
}
