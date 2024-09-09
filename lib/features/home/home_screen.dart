import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              children: [
                Text(
                  'Ready to start meditate?',
                  style: AppTextStyles.s20w600,
                ),
                Spacer(),
                CircleAvatar(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Hello World!',
              style: TextStyle(
                fontFamily: "SFDisplay",
                fontSize: 52,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
