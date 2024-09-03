import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: kBottomNavigationBarHeight,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
          border: Border(
            top: BorderSide(
              color: AppColors.white.withOpacity(0.2),
              width: 1.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: AppColors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: AppColors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: AppColors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: AppColors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
