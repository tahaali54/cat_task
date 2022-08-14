import 'package:flutter/material.dart';

import '../common/theme.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'catholder-22',
                  style: CatTextStyles.heading,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Age',
                  style: CatTextStyles.title,
                  children: [
                    TextSpan(
                      text: ': 21',
                      style: CatTextStyles.title.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/img_dp.png',
          height: 76,
        ),
      ]),
    );
  }
}
