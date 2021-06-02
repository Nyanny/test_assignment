import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/login_state.dart';

import 'authentication_cubit.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authenticationCubit}) : super(InitialLoginState());

  final AuthenticationCubit authenticationCubit;

  late String username;
  late String password;

  Future<void> logIn() async {
    try {
      emit(LoadingLoginState());
      authenticationCubit.logIn(username: username, password: password);
    } catch (e) {
      emit(ErrorLoginState());
    }
  }

  Future<void> loginUsernameChanged({required String username}) async {
    emit(UsernameChangedLoginState());
    this.username = username;
  }

  Future<void> passwordUsernameChanged({required String password}) async {
    if (password.isNotEmpty) {
      emit(HasPasswordLoginState());
      this.password = password;
    } else {
      emit(HasNoPasswordLoginState());
    }
  }
}
