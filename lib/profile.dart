import 'package:flutter/material.dart';
import 'profile_landscape.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      final screenWidth = constraints.maxWidth;
      if (screenWidth > 540) {
        return const UserLandscape();
      }
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
          body: Container(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/profile.png'),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'Hi, Galina',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromARGB(255, 38, 38, 38),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
