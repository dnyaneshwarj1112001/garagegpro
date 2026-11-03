// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginWithGoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  LoginWithGoogleButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFF0F172A), // Dark slate surface
        foregroundColor: Colors.white,
        side: const BorderSide(color: Color(0xFF334155)),
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Official Multi-Colored Google "G" Icon
          Container(
            width: 20,
            height: 40,
            child: Image.asset(
              "asset/appimages/googleImage.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            'Continue with Google',
            style: TextStyle(
              fontSize: 14,
              // fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
