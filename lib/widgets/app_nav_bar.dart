import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/styles/app_icons.dart';

import '../styles/app_colors.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({
    super.key,
    required this.child,
  });

  final StatefulNavigationShell child;

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _selectedIndex = 0;

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
            AppNavBarItem(
              activeIconSrc: AppIcons.home,
              inactiveIconSrc: AppIcons.homeInactive,
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
                widget.child.goBranch(_selectedIndex);
              },
              isActive: _selectedIndex == 0,
            ),
            AppNavBarItem(
              activeIconSrc: AppIcons.search,
              inactiveIconSrc: AppIcons.searchInactive,
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
                widget.child.goBranch(_selectedIndex);
              },
              isActive: _selectedIndex == 1,
            ),
            AppNavBarItem(
              activeIconSrc: AppIcons.profile,
              inactiveIconSrc: AppIcons.profileInactive,
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
                widget.child.goBranch(_selectedIndex);
              },
              isActive: _selectedIndex == 2,
            ),
            AppNavBarItem(
              activeIconSrc: AppIcons.star,
              inactiveIconSrc: AppIcons.starInactive,
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
                widget.child.goBranch(_selectedIndex);
              },
              isActive: _selectedIndex == 3,
            ),
          ],
        ),
      ),
    );
  }
}

class AppNavBarItem extends StatelessWidget {
  const AppNavBarItem({
    super.key,
    required this.activeIconSrc,
    required this.inactiveIconSrc,
    required this.onPressed,
    this.isActive = false,
  });

  final String activeIconSrc;
  final String inactiveIconSrc;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: AppColors.lightPink.withOpacity(0.6),
                  blurRadius: 25,
                  spreadRadius: 4,
                  offset: const Offset(
                    0,
                    6,
                  ),
                )
              ]
            : [],
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          isActive ? activeIconSrc : inactiveIconSrc,
          colorFilter: ColorFilter.mode(
            isActive ? AppColors.white : AppColors.grey,
            BlendMode.srcIn,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
