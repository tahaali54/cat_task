import 'package:flutter/material.dart';

import '../common/theme.dart';
import 'cat_tile.dart';

class AllCats extends StatelessWidget {
  const AllCats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
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
    );
  }
}
