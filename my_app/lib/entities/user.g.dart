// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension UserCopyWithExtension on User {
  User copyWith({
    String Function(String)? id,
    String Function(String)? firstName,
    String Function(String)? lastName,
  }) =>
      User(
        id: id != null ? id.call(this.id) : this.id,
        firstName:
            firstName != null ? firstName.call(this.firstName) : this.firstName,
        lastName:
            lastName != null ? lastName.call(this.lastName) : this.lastName,
      );
}
