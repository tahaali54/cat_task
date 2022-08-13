import 'package:cat_task/common/theme.dart';
import 'package:flutter/material.dart';

import 'bottom_nav.dart';
import 'cat_tile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 24, bottom: 12),
                  child: Text(
                    'Featured',
                    style: CatTextStyles.heading,
                  ),
                ),
                CatTile(),
                CatTile(),
                Padding(
                  padding: EdgeInsets.only(top: 22, left: 24, bottom: 12),
                  child: Text(
                    'All cats',
                    style: CatTextStyles.heading,
                  ),
                ),
                CatTile(),
                CatTile(),
                CatTile(),
              ]),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(onTap: (value) {}),
    );
  }
}
