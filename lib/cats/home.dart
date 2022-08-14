import 'package:cat_task/common/global_cache.dart';
import 'package:flutter/material.dart';

import '../common/theme.dart';
import 'all_cats.dart';
import 'bottom_nav.dart';
import 'cat_tile.dart';
import 'profile_tile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: GlobalCache.instance.selectedIndex,
          builder: (context, value, child) {
            if (value == 0) {
              return const AllCats();
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ProfileTile(),
                  Padding(
                    padding: EdgeInsets.only(top: 14, left: 24, bottom: 12),
                    child: Text(
                      'My cats',
                      style: CatTextStyles.heading,
                    ),
                  ),
                  CatTile(),
                  CatTile(),
                  CatTile(),
                ],
              );
            }
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(onTap: (value) {
        GlobalCache.instance.selectedIndex.value = value;
      }),
    );
  }
}
