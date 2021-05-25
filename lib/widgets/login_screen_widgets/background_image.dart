import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Image.asset(
        "assets/images/bg_login.png",
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
      ),
      clipper: LoginBackgroundImageClipper(),
    );
  }
}

class LoginBackgroundImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.5);
    // TODO Не понял, как посмотреть в фигме угол наклона
    path.lineTo(size.width, size.height * 0.37);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
