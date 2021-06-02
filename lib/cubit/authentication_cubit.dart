import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/authentication_state.dart';
import 'package:test_assignment/repositories/authentication_repository.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(AuthenticatedState());

  final AuthenticationRepository _authenticationRepository;

  Future<void> isLoggedIn() async {
    final bool hasToken = await _authenticationRepository.hasToken();
    if (hasToken) {
      emit(AuthenticatedState());
    } else {
      emit(UnauthenticatedState());
    }
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    emit(LoadingAuthenticationState());
    // Можно в блоке try обратиться через репозиторий к серверу для проверки юзернейма и пароля и получения токена
    // и следующее emit только после того, как придет ответ с сервера
    await _authenticationRepository.persistToken("sometoken");
    emit(AuthenticatedState());
  }

  Future<void> logOut() async {
    emit(UnauthenticatedState());
    // Обращение к серверу, что токен нектуален
    await _authenticationRepository.deleteToken();
  }
}
