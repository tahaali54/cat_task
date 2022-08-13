import 'package:flutter/material.dart';

import '../common/theme.dart';
import 'cat_button.dart';

class CatTile extends StatelessWidget {
  const CatTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: CatColors.outline,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Row(children: [
              const SizedBox(
                height: 93,
                width: 94,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      'Awesome cat',
                      style: CatTextStyles.title,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                        bottom: 6,
                      ),
                      child: Text(
                        'Very nice cat with cute ears',
                        style: CatTextStyles.subtitle,
                      ),
                    ),
                    CatButton(),
                  ],
                ),
              )),
            ]),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/img_cat.png',
              height: 95,
            ),
          ),
        ],
      ),
    );
  }
}
