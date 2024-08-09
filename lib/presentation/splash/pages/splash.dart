import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/images/app_images.dart';
import 'package:spotify_clone/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future<void> delay() async {
      await Future.delayed(
        const Duration(seconds: 3),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedPage(),
        ),
      );
    }

    delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
        ),
      ),
    );
  }
}
