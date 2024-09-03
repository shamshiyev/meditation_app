import 'dart:ui';

import 'package:flutter/material.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../../widgets/app_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/circle.png',
                ),
                fit: BoxFit.none,
                alignment: Alignment.bottomRight,
              ),
              border: Border.symmetric(
                vertical: BorderSide(
                  color: AppColors.white.withOpacity(
                    0.6,
                  ), // Border color
                  width: 1.2, // Border width
                ),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: AppColors.backGroundGradient,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.purpleShadow.withOpacity(
                      0.1,
                    ), // Shadow color
                    spreadRadius: 0, // Spread radius
                    blurRadius: 30, // Blur radius
                    offset: const Offset(
                      0,
                      1.2,
                    ), // Offset in x and y direction
                  ),
                ],
              ),
              child: const SafeArea(
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
              ),
            ),
          ),
          const AppNavBar(),
        ],
      ),
    );
  }
}
