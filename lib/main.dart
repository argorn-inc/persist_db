import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:persist_db/my_app.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:persist_db/database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'user_database'),
    onCreate: ((db, version) {
      return db.execute(
          'CREATE TABLE users(email TEXT PRIMARY KEY, firstname TEXT, lastname TEXT)');
    }),
    version: 1,
  );

  Future<void> insertUser(User users) async {
    final db = await database;

    await db.insert('users', users.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  var clement =
      User(email: 'clemet@gmail.com', firstname: 'Clement', lastname: 'Amoasi');

  await insertUser(clement);

  Future<List<User>> users() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('users');
    return List.generate(maps.length, (i) {
      return User(
          email: maps[i]['email'],
          firstname: maps[i]['firstname'],
          lastname: maps[i]['lastname']);
    });
  }

  print(await users());

  runApp(const MyApp());
}
