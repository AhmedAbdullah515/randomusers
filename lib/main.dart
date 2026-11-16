import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomusers/Providers/userProvider.dart';
import 'package:randomusers/Screens/homeScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider()..fetchUsers(), 
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
      ),
    );
  }
}