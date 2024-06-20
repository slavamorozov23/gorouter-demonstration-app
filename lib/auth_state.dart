import 'package:flutter/material.dart';

class AuthState extends ChangeNotifier {
  bool _loggedIn = false;
  bool _isSuperUser = false;

  bool get isLoggedIn => _loggedIn;
  bool get isSuperUser => _isSuperUser;

  void login({bool superUser = false}) {
    _loggedIn = true;
    _isSuperUser = superUser;
    notifyListeners();
  }

  void logout() {
    _loggedIn = false;
    _isSuperUser = false;
    notifyListeners();
  }
}
