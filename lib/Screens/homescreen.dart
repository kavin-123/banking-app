import 'package:flutter/material.dart';
import 'package:widgetpractice/constant/color.dart';
import 'package:widgetpractice/constant/textstyle.dart';
import 'package:widgetpractice/data/Trasaction-data.dart';
import 'package:widgetpractice/data/card-data.dart';
import 'package:widgetpractice/widget/mycard.dart';
import 'package:widgetpractice/widget/tranction.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
            child: Image.asset('assets/icons/woman(1).png'),
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
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
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
              Text(
                "Recent Transactions",
                style: ApptextStyle.BODY_TEXT,
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return Tranctioncard(tranaction: myTransactions[index]);
                },
                separatorBuilder: (Context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
