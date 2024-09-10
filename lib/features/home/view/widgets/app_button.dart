import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../../../styles/app_colors.dart';
import '../../../../styles/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          decoration: BoxDecoration(
            border: const GradientBoxBorder(
              gradient: AppColors.gradient2,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.s17w600,
            ),
          ),
        ),
      ),
    );
  }
}
