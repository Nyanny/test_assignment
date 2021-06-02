import 'package:flutter/material.dart';
import 'package:test_assignment/cubit/users_cubit.dart';
import 'package:test_assignment/cubit/users_state.dart';
import 'package:test_assignment/repositories/users_repository.dart';
import 'package:test_assignment/widgets/users_screen_widgets/custom_icons.dart';
import 'package:test_assignment/widgets/users_screen_widgets/my_sliver_appbar.dart';
import 'package:test_assignment/widgets/users_screen_widgets/retry_material_button.dart';
import 'package:test_assignment/widgets/users_screen_widgets/users_sliver_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => UsersScreen());
  }

  final usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<UsersCubit, UsersState>(
            bloc: UsersCubit(usersRepository)..fetchUsers(),
            builder: (context, state) {
              if (state is UsersLoadingState) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Color(0xff9B51E0),
                ));
              }

              if (state is UsersLoadedState) {
                return CustomScrollView(
                  slivers: <Widget>[
                    MySliverAppBar(),
                    UsersSliverList(usersList: state.loadedUsers),
                  ],
                );
              }

              if (state is UsersErrorState) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        CustomIcons.WarningSign,
                        color: Color(0xffBB6BD9),
                        size: 100,
                      ),
                      Divider(
                        height: 36,
                        thickness: 0,
                        color: Colors.transparent,
                      ),
                      Text(
                        'Не удалось загрузить информацию',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        height: 32,
                        thickness: 0,
                        color: Colors.transparent,
                      ),
                      RetryMaterialButton(),
                    ],
                  ),
                );
              }

              return Container(
                child: const Text("container"),
              );
            }));
  }
}
