abstract class LoginState {}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class ErrorLoginState extends LoginState {}

class UsernameChangedLoginState extends LoginState {}

class HasPasswordLoginState extends LoginState {}

class HasNoPasswordLoginState extends LoginState {}
