import 'package:flutter/material.dart';
import 'package:randomusers/Models/user_model.dart';

class Userdetailsscreen extends StatelessWidget
 {
   final UserModel user;
  Userdetailsscreen({required this.user,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body:Center(
         child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.imagelink),
            ),
            SizedBox(height: 20),
            Text(user.name,style:TextStyle(fontSize: 24,fontWeight:FontWeight.bold)),
            SizedBox(height: 10),
            Text(user.email,style:TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(user.phone,style:TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(user.Adress,style:TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Age: ${user.age}',style:TextStyle(fontSize: 18)),
          ]
         ),
      ),
    );
  }
}