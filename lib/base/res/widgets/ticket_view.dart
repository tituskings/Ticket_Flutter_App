import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/res/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/res/widgets/big_circle.dart';
import 'package:ticket_app/base/res/widgets/big_dot.dart';
import 'package:ticket_app/base/res/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 186,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //show departure and destination with icon first line
                  Row(
                    children: [
                      TextStyleThird(
                        text: "NYC",
                      ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle:
                                  1.57, // 2*pi = 360, pi = 180 , 180 = 3.1416(r), 90 = 1.57(r) angle = -1.57 opposit direaction
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: "LDN")
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New-York"),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width:
                            100, //this is added to give it a fixed width so it can be able to take the same width with the rest of the row items

                        child: TextStyleFourth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // circles and dots
            Container(
              height: 13,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 10)),
                  BigCircle(
                    isRight: true,
                  )
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  //show departure and destination with icon first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(topText: "1 MAY", BottomText: "Date"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleThird(text: "1 MAY"),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleThird(text: "DATE"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(text: "1 MAY"),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleThird(text: "DATE"),
                        ],
                      ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "08:00AM",
                      //   style: AppStyles.headLineStyle2
                      //       .copyWith(color: Colors.white),
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "23",
                      //   style: AppStyles.headLineStyle2
                      //       .copyWith(color: Colors.white),
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  //show departure and destination names with time
                  // Row(
                  //   children: [
                  //     Text(
                  //       "Date",
                  //       style: AppStyles.headLineStyle2
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Departure time",
                  //       style: AppStyles.headLineStyle2
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Number",
                  //       style: AppStyles.headLineStyle2
                  //           .copyWith(color: Colors.white),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
