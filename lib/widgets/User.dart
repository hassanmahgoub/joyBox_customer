// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String email, password;
  User({
    required this.email,
    required this.password,
  });
  User.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'];
  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
