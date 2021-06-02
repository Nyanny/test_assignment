abstract class AuthenticationState {}

class AuthenticatedState extends AuthenticationState {}

class LoadingAuthenticationState extends AuthenticationState {}

class UnauthenticatedState extends AuthenticationState {}

class UnknownAuthenticatedState extends AuthenticationState {}
