import 'package:flutter/material.dart';
import 'package:test_assignment/widgets/login_screen_widgets/background_image.dart';
import 'package:test_assignment/widgets/login_screen_widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundImage(),
          Positioned(
            // TODO не понимаю, как ориентироваться на Figma для позиции и размеров Card. Сделал "на глаз"
            bottom: 50,
            left: 30,
            right: 30,
            top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO сделать скрытие текста, когда в фокусе поля
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
                  color: Colors.white,
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
