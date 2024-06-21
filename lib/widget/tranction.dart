import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetpractice/constant/textstyle.dart';
import 'package:widgetpractice/data/Trasaction-data.dart';

class Tranctioncard extends StatelessWidget {
  final TransactionModel tranaction;
  const Tranctioncard({super.key, required this.tranaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tranaction.color),
                child: Image.asset(tranaction.avatar),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tranaction.name,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    tranaction.month,
                    style: ApptextStyle.LISTTILE_SUB_TITLE,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            tranaction.currentBalance,
                            style: ApptextStyle.LISTTILE_TITLE,
                          ),
                          Row(
                            children: [
                              tranaction.changePercentageIndicator == "up"
                                  ? Icon(
                                      FontAwesomeIcons.levelUpAlt,
                                      size: 11,
                                      color: Colors.green,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.levelDownAlt,
                                      size: 10,
                                      color: Colors.red,
                                    ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                tranaction.changePercentage,
                                style: ApptextStyle.LISTTILE_TITLE,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
