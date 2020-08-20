import 'package:flutter/material.dart';

void main() {
  var userHolder = UserHolder();

  var user = userHolder.registerUserByEmail("some name", "email@mail.ru");
}

/*
registerUserByEmail
Регистрация пользователя через Email и пароль. Необходимо реализовать метод объекта
(класс UserHolder) для регистрации пользователя
+1
Реализуй метод

registerUserByEmail(String fullName, String email) возвращающий объект User,
если пользователь с таким же логином уже есть в системе необходимо бросить
исключение Exception('A user with this email already exists')
*/

class UserHolder {
  Map<String, User> users;

  UserHolder({this.users});

  User registerUserByEmail(String fullName, String email) {
    if (!this.users.containsKey(email)) {
      var user = User(fullName, email);
      this.users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this email already exists');
    }
  }
}

class User {
  String login;
  String email;
  String fullName;

  User(String paramFullName, String paramEmail) {
    this.email = paramEmail;
    this.fullName = paramFullName;
    this.login = paramEmail;
  }
}
