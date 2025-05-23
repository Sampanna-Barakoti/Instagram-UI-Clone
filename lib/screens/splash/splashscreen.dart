import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/screens/login/loginscreen.dart';
import 'package:instagram/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imageURL: "insta1.png"),
            SizedBox(height: 20),
            Uihelper.customImage(imageURL: "insta2.png"),
          ],
        ),
      ),
    );
  }
}
