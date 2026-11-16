import 'package:dio/dio.dart';
import 'package:randomusers/Models/user_model.dart';
class Userservice
 {
  static Dio dio = Dio();
  static Future<Users> getuser() async{
    Response response =await dio.get("https://randomuser.me/api/?results=10");
    if (response.statusCode==200)
    {
      return Users.fromjson(response.data);
    }
    else
    {
      throw Exception("Failed to load users");
    }

  }
 }