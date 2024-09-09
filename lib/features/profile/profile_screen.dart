import 'package:flutter/material.dart';
import 'package:meditation_app/styles/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Profile Screen',
              style: AppTextStyles.s52w400,
            ),
          ),
        ],
      ),
    );
  }
}
