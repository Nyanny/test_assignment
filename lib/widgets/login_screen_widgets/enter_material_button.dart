import 'package:flutter/material.dart';
import 'package:test_assignment/cubit/authentication_cubit.dart';
import 'package:test_assignment/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/login_state.dart';

class EnterMaterialButton extends StatelessWidget {
  const EnterMaterialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context);
    AuthenticationCubit authenticationCubit =
        BlocProvider.of<AuthenticationCubit>(context);

    void _callback() {
      loginCubit.logIn();
    }

    return BlocBuilder<LoginCubit, LoginState>(
        bloc: loginCubit,
        builder: (context, state) {
          return MaterialButton(
            child: const Text(
              "Войти",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            color: const Color(0xf29b51e0),
            minWidth: 230.0,
            height: 38,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            /* TODO не понял, почему не реагирует на стейт HasPasswordLoginState, который выбрасывается каждый раз,
                когда набирается символ в эдиторе пароля
            */
            // onPressed: state is HasPasswordLoginState ? () => _callback : null,
            onPressed: () {
              print(loginCubit.password);
              /* TODO не понял, почему не работает колбек?
              не работает он в LoginBloc. Но почему?
              */
              _callback;
              authenticationCubit.logIn(
                  username: loginCubit.username, password: loginCubit.password);
            },
          );
        });
  }
}
