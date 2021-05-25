import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // TODO чтобы сделать фиолетовым(0xFF9B51E0) цвет, когда в фокусе
      // focusNode: ,
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
