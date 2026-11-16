import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomusers/CustomWedget/customUser.dart';
import 'package:randomusers/Providers/userProvider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Random Users",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          if (value.userData == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: value.userData!.users.length,
            itemBuilder: (context, index) {
              return Customuser(User: value.userData!.users[index]);
            },
          );
        },

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: () 
        {
          context.read<UserProvider>().fetchUsers();
        },
        child: const Icon(Icons.refresh),
          
      ),
    );
  }
}