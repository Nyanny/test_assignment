import 'package:flutter/material.dart';

class EnterMaterialButton extends StatelessWidget {
  const EnterMaterialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: const Text(
          "Войти",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        color: const Color(0xf29b51e0),
        minWidth: 230.0,
        height: 38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {});
  }
}
