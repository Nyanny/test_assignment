import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

// автоген серилизация
@JsonSerializable()
class User {
  String name;
  String email;

  User({
    required this.name,
    required this.email,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// ручная серилизация
// class User {
//   String name;
//   String email;
//
//   User({required this.name, required this.email,});
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       name: json['name'],
//       email: json['email'],
//     );
//   }
// }
