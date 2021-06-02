import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/screens/app_loading_screen.dart';
import 'package:test_assignment/screens/login_screen.dart';
import 'package:test_assignment/screens/users_screen.dart';

import 'cubit/authentication_cubit.dart';
import 'cubit/authentication_state.dart';
import 'repositories/authentication_repository.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final authenticationRepository = AuthenticationRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SFPro'),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationCubit>(
            create: (context) => AuthenticationCubit(
                authenticationRepository: authenticationRepository)
              ..isLoggedIn(),
          ),
        ],
        child: const Authentication(),
      ),
    );
  }
}

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    final AuthenticationCubit authenticationCubit =
        BlocProvider.of<AuthenticationCubit>(context);

    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthenticationCubit, AuthenticationState>(
          bloc: authenticationCubit,
          listener: (context, state) {
            if (state is AuthenticatedState) {
              _navigator.pushAndRemoveUntil<void>(
                UsersScreen.route(),
                (route) => false,
              );
            }
            if (state is UnauthenticatedState) {
              _navigator.pushAndRemoveUntil<void>(
                LoginScreen.route(),
                (route) => false,
              );
            }
            if (state is LoadingAuthenticationState) {
              _navigator.pushAndRemoveUntil<void>(
                AppLoadingScreen.route(),
                (route) => false,
              );
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => AppLoadingScreen.route(),
    );
  }
}
