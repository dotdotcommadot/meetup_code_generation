import 'package:custom_generator_annotations/elements-generators-annotations.dart';

part 'user.g.dart';

@generateCopyWith
class User {
  String id;
  String firstName;
  String lastName;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
}
