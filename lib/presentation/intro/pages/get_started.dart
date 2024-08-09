import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/custom_button.dart';
import 'package:spotify_clone/core/configs/images/app_images.dart';
import 'package:spotify_clone/core/configs/theme/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 70,
              horizontal: 40,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.homeImage,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: const Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage(
                      AppImages.logo,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Enjoy Listening to Music",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.''',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomButton(
                  onPressed: onpress,
                  title: "Get Started",
                )
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(
              0.15,
            ),
          ),
        ],
      ),
    );
  }
}

void onpress() {}
