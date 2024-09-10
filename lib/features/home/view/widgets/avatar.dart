import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../styles/app_colors.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4), // Border width
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.white.withOpacity(
              0.3,
            ), // Border color
          ),
          color: AppColors.white.withOpacity(
            0.1,
          ), // Border color
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.gold.withOpacity(
                0.5,
              ), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 12, // Blur radius
              offset: const Offset(
                0,
                1.2,
              ),
            ),
          ]),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.backGround.withOpacity(
          0.3,
        ),
        child: SvgPicture.asset(
          'assets/svg/meditation.svg',
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(
            AppColors.gold,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
