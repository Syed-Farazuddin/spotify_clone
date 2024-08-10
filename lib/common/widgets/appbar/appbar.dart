import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(
              0.03,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
    );
  }
}
