import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.title,
    this.obscureText,
    required this.onChanged,
    this.icon,
  });
  final String title;
  final bool? obscureText;
  final Icon? icon;
  final Function(dynamic) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: onChanged,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: const EdgeInsets.all(
                  30,
                ),
                hintText: title,
                hintStyle: const TextStyle(
                  color: Color(0XFFA7A7A7),
                  fontWeight: FontWeight.w500,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.15),
                    width: 0.05,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
