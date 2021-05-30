import 'package:test_assignment/models/user_model.dart';
import 'package:test_assignment/network/users_api_provider.dart';

class UsersRepository {
  final UsersProvider _usersProvider = UsersProvider();
  Future<List<User>> getUsers() => _usersProvider.getUsers();
}
