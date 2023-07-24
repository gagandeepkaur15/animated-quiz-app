import 'package:flutter/material.dart';
import 'package:quiz_app/screens/signin.dart';
import 'package:rive/rive.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignIn()));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.redAccent.shade100,
          child: const Center(
            child: RiveAnimation.network(
              'https://public.rive.app/community/runtime-files/196-360-loading.riv',
            ),
          ),
        ),
      );
}
