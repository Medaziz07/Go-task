import 'package:flutter/material.dart';
import 'package:go_task/Screens/homePage.dart';
import 'package:go_task/Screens/loginPage.dart';
import 'package:go_task/Screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
      home: const HomePage(),
    );
  }
}
