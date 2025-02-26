import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String BottomText;
  const AppColumnTextLayout(
      {super.key, required this.topText, required this.BottomText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextStyleThird(text: topText),
        SizedBox(
          height: 5,
        ),
        TextStyleThird(text: BottomText),
      ],
    );
  }
}
