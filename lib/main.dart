import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_up.dart';
import 'profile.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        initialRoute: '/login',
        routes: {
          '/login': (context) => const MyHomePage(),
          '/sign_up': (context) => const SignUpPage(),
          '/profile': (context) => const ProfilePage(),
        });
  }
}
