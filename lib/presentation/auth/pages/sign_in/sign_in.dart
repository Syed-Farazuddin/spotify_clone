import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/appbar.dart';
import 'package:spotify_clone/common/widgets/button/custom_button.dart';
import 'package:spotify_clone/common/widgets/input_field.dart/custom_input.dart';
import 'package:spotify_clone/core/configs/images/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    String password = "";
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(context),
      appBar: CustomAppbar(
        title: Image.asset(
          AppImages.logo,
          height: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("If you need Any support"),
                _textButton(
                  "Click Here",
                  () {
                    debugPrint("Support Needed");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomInputField(
              onChanged: (value) {
                email = value;
              },
              title: "Enter Email",
            ),
            const SizedBox(
              height: 15,
            ),
            CustomInputField(
              onChanged: (value) {
                password = value;
              },
              title: "Password",
              obscureText: true,
              icon: const Icon(
                Icons.remove_red_eye_rounded,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Recovery Password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                debugPrint("$name $password $email");
              },
              title: "Sign In",
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textButton(String title, Function() onTap) {
  return TextButton(
    onPressed: onTap,
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        color: AppColors.primary,
      ),
    ),
  );
}

Widget _bottomNavigationBar(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Not a Member?",
          style: TextStyle(fontSize: 15),
        ),
        _textButton(
          "Register Now",
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            );
          },
        ),
      ],
    ),
  );
}
