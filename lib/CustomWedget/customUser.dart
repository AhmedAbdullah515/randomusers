import 'package:flutter/material.dart';
import 'package:randomusers/Models/user_model.dart';
import 'package:randomusers/Screens/userDetailsScreen.dart';

class Customuser extends StatelessWidget {
  final UserModel User;
  const Customuser({required this.User,super.key});

  @override
  Widget build(BuildContext context)
   {
    
    return GestureDetector(
      onTap: () {
       Navigator.push(context,MaterialPageRoute(builder:(context)=>Userdetailsscreen(user:User)));
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(User.imagelink),
          ),
          title: Text(User.name),
          subtitle: Text(
            User.email,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}