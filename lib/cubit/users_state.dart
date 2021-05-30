abstract class UsersState {}

class UsersErrorState extends UsersState {}

class UsersLoadingState extends UsersState {}

class UsersLoadedState extends UsersState {
  List<dynamic> loadedUsers;
  UsersLoadedState({required this.loadedUsers});
}
