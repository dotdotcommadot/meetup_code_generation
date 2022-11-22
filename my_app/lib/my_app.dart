import 'package:my_app/entities/user.dart';

main() {
  final user = User(
    id: 'id',
    firstName: 'firstName',
    lastName: 'lastName',
  );

  final userCopy = user.copyWith(
    id: (id) => 'newId',
    firstName: (firstName) => 'newFirstName',
    lastName: (lastName) => 'newLastName',
  );

  print(userCopy.id);
  print(userCopy.firstName);
  print(userCopy.lastName);
}
