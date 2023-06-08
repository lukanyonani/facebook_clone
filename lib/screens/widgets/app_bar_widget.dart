import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.menuIconStyle,
    required this.iconSize,
  });

  final BoxDecoration menuIconStyle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 140,
          child: Image.asset('assets/images/fb.png'),
        ),
        Row(
          children: [
            Container(
              height: 36,
              width: 36,
              decoration: menuIconStyle,
              child: Icon(
                Icons.add,
                size: iconSize,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 36,
              width: 36,
              decoration: menuIconStyle,
              child: Icon(
                Icons.search_outlined,
                size: iconSize,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 36,
              width: 36,
              decoration: menuIconStyle,
              child: Icon(
                Icons.chat_bubble_outline,
                size: iconSize,
              ),
            ),
          ],
        )
      ],
    );
  }
}
