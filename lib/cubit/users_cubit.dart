import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_assignment/cubit/users_state.dart';
import 'package:test_assignment/models/user_model.dart';
import 'package:test_assignment/network/users_repository.dart';

class UsersCubit extends Cubit<UsersState> {
  final UsersRepository usersRepository;

  UsersCubit(this.usersRepository) : super(UsersLoadingState());

  Future<void> fetchUsers() async {
    try {
      emit(UsersLoadingState());
      final List<User> _loadedUsersList = await usersRepository.getUsers();
      emit(UsersLoadedState(loadedUsers: _loadedUsersList));
    } catch (_) {
      emit(UsersErrorState());
    }
  }
}
