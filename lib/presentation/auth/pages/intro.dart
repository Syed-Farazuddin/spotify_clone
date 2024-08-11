import 'package:flutter/material.dart';

import 'package:spotify_clone/common/widgets/appbar/appbar.dart';
import 'package:spotify_clone/common/widgets/button/custom_button.dart';
import 'package:spotify_clone/core/configs/images/app_images.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/auth/pages/sign_in/sign_in.dart';
import 'package:spotify_clone/presentation/auth/pages/sign_up/sign_up.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(AppImages.patternUp),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(AppImages.patternDown),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.bille)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logo),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Enjoy Listening To Music',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CustomButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => SignUp(),
                                  ),
                                );
                              },
                              title: 'Register'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomButton(
                            isActive: false,
                            title: "Sign in",
                            onPressed: () {
                              print("Button pressed");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SignInPage(),
                                ),
                              );
                            },

                            // child: const Text(
                            //   'Sign in',
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     fontSize: 16,
                            //     color: Colors.white,
                            //   ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
