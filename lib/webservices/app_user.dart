class AppUser {
  final String? email;
  final String? firstName;
  final String? lastName;

  const AppUser({
    this.email,
    this.firstName,
    this.lastName,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      email: json.containsKey('email') ? json['email'] : null,
      firstName: json.containsKey('first_name') ? json['first_name'] : null,
      lastName: json.containsKey('last_name') ? json['last_name'] : null,
    );
  }

  @override
  String toString() => 'User(email: $email)';
}
