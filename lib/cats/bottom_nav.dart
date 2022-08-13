import 'package:flutter/material.dart';

import '../common/self_table_icons.dart';
import '../common/theme.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final ValueChanged<int> onTap;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;

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
          onTap: (value) {
            if (value != _currentIndex) {
              setState(() {
                _currentIndex = value;
              });
              widget.onTap(value);
            }
          },
          currentIndex: _currentIndex,
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
