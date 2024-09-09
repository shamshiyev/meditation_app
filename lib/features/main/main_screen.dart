import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../styles/app_colors.dart';
import '../../widgets/app_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.child,
  });

  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: child.currentIndex % 2 == 0
                  ? const DecorationImage(
                      image: AssetImage(
                        'assets/images/circle.png',
                      ),
                      fit: BoxFit.none,
                      alignment: Alignment.bottomRight,
                    )
                  : null,
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
              sigmaX: 8.0,
              sigmaY: 8.0,
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
              child: child,
            ),
          ),
          AppNavBar(
            child: child,
          ),
        ],
      ),
    );
  }
}
