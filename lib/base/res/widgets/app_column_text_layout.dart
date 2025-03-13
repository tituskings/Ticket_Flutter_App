import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String BottomText;
  final dynamic alignment;
  final bool? isColor;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.BottomText,
      required this.alignment,
      this.isColor = null});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: topText,
          isColor: isColor,
        ),
        SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: BottomText,
          isColor: isColor,
        ),
      ],
    );
  }
}
