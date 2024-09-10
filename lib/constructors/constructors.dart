class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String address;

  const User({
    required this.firstName,
    required this.lastName,
    this.age,
    this.address = '242 Rue du Feaubourg Saint-Antoine',
  });

  const User.dummy({
    this.firstName = "Bob",
    this.lastName = "Burger",
    this.age = 42,
    this.address = 'Dummy address',
  });
}

class Dog {
  final String name;
  final int age;

  const Dog(
    this.name, {
    this.age = 10,
  });
}

void main() {
  final toto = User(firstName: 'toto', lastName: 'lastName');
  final bob = User.dummy();
  const medor = Dog('Medor', age: 42);
  const medor2 = Dog('Medor', age: 42);

  print(medor == medor2);
}
