import 'package:flutter/material.dart';

class User {
  final String email;
  final String firstname;
  final String lastname;

  User({required this.email, required this.firstname, required this.lastname});

  Map<String, dynamic> toMap() {
    return {'email': email, 'firstname': firstname, 'lastname': lastname};
  }

  @override
  String toString() {
    return 'User{firstname: $firstname';
  }
}
