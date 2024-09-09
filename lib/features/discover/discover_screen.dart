import 'package:flutter/material.dart';

import '../../styles/app_text_styles.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

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
              'Discover Screen',
              style: AppTextStyles.s52w400,
            ),
          ),
        ],
      ),
    );
  }
}
