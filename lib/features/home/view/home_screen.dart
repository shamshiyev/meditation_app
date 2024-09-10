import 'package:flutter/material.dart';

import '../../../styles/app_colors.dart';
import '../../../styles/app_text_styles.dart';
import 'widgets/app_button.dart';
import 'widgets/avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
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
                Avatar(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              padding: const EdgeInsets.all(
                30,
              ),
              decoration: BoxDecoration(
                gradient: AppColors.blackGradient,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Choose your goal',
                    style: AppTextStyles.s17w600.copyWith(
                      shadows: [
                        BoxShadow(
                          color: AppColors.lightPurple.withOpacity(
                            0.79,
                          ),
                          blurRadius: 22,
                          offset: const Offset(
                            0,
                            -1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        title: 'Stress relief',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      AppButton(
                        title: 'Mindfullness',
                        onTap: () {},
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        title: 'Healing',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      AppButton(
                        title: 'Focus',
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: kBottomNavigationBarHeight,
          ),
        ],
      ),
    );
  }
}
