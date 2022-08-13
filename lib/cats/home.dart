import 'package:cat_task/common/theme.dart';
import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
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
                          children: [
                            const Text(
                              'Awesome cat',
                              style: CatTextStyles.title,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 4,
                                bottom: 6,
                              ),
                              child: Text(
                                'Very nice cat with cute ears',
                                style: CatTextStyles.subtitle,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: CatColors.accentReversedGradient,
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Add',
                                        textAlign: TextAlign.center,
                                        style: CatTextStyles.accentButton,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
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
          ),
        ]),
      ),
      bottomNavigationBar: CustomBottomNavBar(onTap: (value) {}),
    );
  }
}
