import 'package:flutter/material.dart';

import '../common/self_table_icons.dart';
import '../common/theme.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CatColors.lightAccentReversedGradient,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: CatColors.accent,
          unselectedItemColor: CatColors.highEmphasisSurface,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(SelfTableIcons.menu), label: 'Cats'),
            BottomNavigationBarItem(
                icon: Icon(SelfTableIcons.face), label: 'Me'),
          ],
        ),
      ),
    );
  }
}
