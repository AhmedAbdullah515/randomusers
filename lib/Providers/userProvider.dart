import 'package:flutter/material.dart';
import 'package:randomusers/Models/user_model.dart';
import 'package:randomusers/Services/userService.dart';


class UserProvider extends ChangeNotifier 
{
  Users? userData;
  Future<void> fetchUsers() async 
  {
    userData = await Userservice.getuser();
    notifyListeners();
  }
}