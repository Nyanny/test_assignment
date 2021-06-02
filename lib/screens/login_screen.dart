import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/authentication_cubit.dart';
import 'package:test_assignment/cubit/login_cubit.dart';

import 'package:test_assignment/widgets/login_screen_widgets/background_image.dart';
import 'package:test_assignment/widgets/login_screen_widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    // TODO
    final AuthenticationCubit authenticationCubit =
        BlocProvider.of<AuthenticationCubit>(context);
    return BlocProvider(
      create: (context) => LoginCubit(authenticationCubit: authenticationCubit),
      child: Scaffold(
          body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundImage(),
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Вход",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 0,
                  color: Colors.transparent,
                ),
                Container(
                  height: 300,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color(0x33021c60),
                      blurRadius: 16,
                    ),
                  ]),
                  child: const LoginCard(),
                  // child: LoginCard(authenticationCubit: authenticationCubit),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
