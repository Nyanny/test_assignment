import 'package:flutter/material.dart';
import 'package:test_assignment/widgets/login_screen_widgets/password_text_field.dart';

import 'email_text_field.dart';
import 'enter_material_button.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            EmailTextField(),
            PasswordTextField(),
            Divider(
              height: 56,
              thickness: 0,
              color: Colors.transparent,
            ),
            EnterMaterialButton(),
            // EnterMaterialButton(authenticationCubit: authenticationCubit),
          ],
        ),
      ),
    );
  }
}
