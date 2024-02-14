import 'dart:convert';

import 'package:hw6_maram_alharthi/models/person.dart';
import 'package:hw6_maram_alharthi/utils/setup.dart';

class UserData {
  UserData() {
    getAllUsers();
  }

  List<Person> allUsers = [];

  void addUser(Person person) {
    allUsers.add(person);
    List<String> allUsersStrings =
        allUsers.map((user) => json.encode(user.toMap())).toList();
    //store list of string user on local
    prefs?.setStringList("users", allUsersStrings);
  }

  void clearList() {
    allUsers.clear();
    prefs!.clear();
  }

  getAllUsers() {
    List<String>? allUsersString = prefs?.getStringList("users");

    if (allUsersString != null) {
      allUsers = [
        for (String userString in allUsersString!)
          Person.fromJson(json.decode(userString))
      ];
    }
  }
}
