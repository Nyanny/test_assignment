import 'package:flutter/material.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const AppLoadingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        color: Color(0xff9B51E0),
      )),
    );
  }
}
