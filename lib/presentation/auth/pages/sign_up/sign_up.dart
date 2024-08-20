import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/appbar.dart';
import 'package:spotify_clone/common/widgets/button/custom_button.dart';
import 'package:spotify_clone/common/widgets/input_field.dart/custom_input.dart';
import 'package:spotify_clone/core/configs/images/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/data/models/auth/user_model.dart';
import 'package:spotify_clone/domain/usecases/sign_up.dart';
import 'package:spotify_clone/presentation/auth/pages/sign_in/sign_in.dart';
import 'package:spotify_clone/service_locator.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("If you need Any support"),
                _textButton("Click Here", () {
                  debugPrint("Support Needed");
                })
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomInputField(
              onChanged: (value) {
                name = value;
              },
              title: "Full Name",
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
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () async {
                var result = await sl<SignUpUseCase>().call(
                  params: UserModel(
                    email: email,
                    fullName: name,
                    password: password,
                  ),
                );
                result.fold(
                  (l) {
                    var snackbar = SnackBar(content: Text(l));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  (r) {},
                );
              },
              title: "Create Account",
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
          "Do you have an account?",
          style: TextStyle(fontSize: 15),
        ),
        _textButton("Sign in", () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignInPage()));
        })
      ],
    ),
  );
}
