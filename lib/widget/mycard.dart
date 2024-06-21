import 'package:flutter/material.dart';
import 'package:widgetpractice/constant/textstyle.dart';
import 'package:widgetpractice/data/card-data.dart';

class Mycard extends StatelessWidget {
  final CardModel card;
  const Mycard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 350,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CARD NAME",
                      style: ApptextStyle.MY_CARD_TITLE,
                    ),
                    Text(
                      card.cardHolderName,
                      style: ApptextStyle.MY_CARD_SUBTITLE,
                    ),
                  ],
                ),
                Text(
                  card.cardNumber,
                  style: ApptextStyle.MY_CARD_SUBTITLE,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EXP DATE",
                          style: ApptextStyle.MY_CARD_TITLE,
                        ),
                        Text(
                          card.expDate,
                          style: ApptextStyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CVV NUMBER",
                          style: ApptextStyle.MY_CARD_TITLE,
                        ),
                        Text(
                          card.cvv,
                          style: ApptextStyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/icons/user.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
