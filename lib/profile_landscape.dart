import 'package:flutter/material.dart';

class UserLandscape extends StatefulWidget {
  const UserLandscape({super.key});

  @override
  State<UserLandscape> createState() => _UserLandscapeState();
}

class _UserLandscapeState extends State<UserLandscape> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            'Profile',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/profile.png'),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Hi, Galina',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
