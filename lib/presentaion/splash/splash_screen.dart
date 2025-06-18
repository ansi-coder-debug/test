import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test/presentaion/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //implementation happen here but i calling future so i write in future
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://pngimg.com/uploads/netflix/netflix_PNG28.png',
          height: 300,
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
