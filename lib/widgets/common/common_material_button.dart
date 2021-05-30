import 'package:flutter/material.dart';

class CommonMaterialButton extends StatelessWidget {
  const CommonMaterialButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 16),
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
