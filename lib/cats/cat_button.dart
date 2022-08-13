import 'package:flutter/material.dart';

import '../common/theme.dart';

class CatButton extends StatefulWidget {
  const CatButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CatButton> createState() => _CatButtonState();
}

class _CatButtonState extends State<CatButton> {
  LinearGradient color = CatColors.accentReversedGradient;
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: isAdded
              ? CatColors.outlineReversedGradient
              : CatColors.accentReversedGradient,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() {
                isAdded = !isAdded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                isAdded ? 'Remove' : 'Add',
                textAlign: TextAlign.center,
                style: isAdded
                    ? CatTextStyles.surfaceButton
                    : CatTextStyles.accentButton,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
