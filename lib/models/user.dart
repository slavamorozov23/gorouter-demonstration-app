class User {
  final String id;
  final String name;
  final DateTime birthDate;
  final List<String> friends;

  User({
    required this.id,
    required this.name,
    required this.birthDate,
    required this.friends,
  });
}
