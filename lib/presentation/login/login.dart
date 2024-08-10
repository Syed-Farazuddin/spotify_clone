import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/button/custom_button.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          onPressed: () {},
          title: "Click here ",
        ),
      ),
    );
  }
}
