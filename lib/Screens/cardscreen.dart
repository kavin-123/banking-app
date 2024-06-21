import 'package:flutter/material.dart';
import 'package:widgetpractice/constant/color.dart';
import 'package:widgetpractice/constant/textstyle.dart';
import 'package:widgetpractice/data/card-data.dart';
import 'package:widgetpractice/widget/mycard.dart';

class Cardscreen extends StatefulWidget {
  const Cardscreen({super.key});

  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<Cardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Bank",
            style: TextStyle(fontFamily: "Poppins", color: kPrimaryColor),
          ),
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.amberAccent,
            ),
          ),
          actions: [
            Icon(
              Icons.notifications_active,
              color: Colors.black,
            )
          ],
        ),
        body: Column(children: [
          Container(
            height: 240,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Mycard(card: myCards[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              },
              itemCount: myCards.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            child: Icon(
              Icons.add,
              size: 55,
            ),
            radius: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Add Card',
            style: ApptextStyle.BODY_TEXT,
          )
        ]));
  }
}
