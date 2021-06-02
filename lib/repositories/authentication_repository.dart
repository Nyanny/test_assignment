import 'dart:async';

class AuthenticationRepository {
  bool tokenBool = false;

  // токен должен быть хеширован
  String token = "token";

  Future<String> authenticate({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    // тут может быть обращение к серверу для подтверждения пароля и бд и получения токена
    // try{
    //   await _authentication.signIn(
    //   email: email,
    //   password: password,);
    // }
    // catch(e){}
    return token;
  }

  Future<void> deleteToken() async {
    // Удаление токена из хранилища
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    // Запись токена в хранилище
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    // Здесь может быть обращение к серверу для проверки есть ли токен и актуален ли он
    await Future.delayed(Duration(seconds: 1));
    return tokenBool;
  }
}
