import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../style/style_guide.dart';

class CardItemDetails extends StatelessWidget {
  const CardItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment:
        //     MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Center(
              child: Text(
                "SANGARA",
                style: TextStyle(fontSize: 12, color: iconColor),
              ),
            ),
          ),
          Row(children: const [
            Expanded(
                child: Divider(
              color: iconColor,
            )),
            Text(
              "STOCK",
              style: TextStyle(fontSize: 10, color: iconColor),
            ),
            Expanded(
                child: Divider(
              color: iconColor,
            )),
          ]),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                CupertinoIcons.money_dollar,
                color: iconColor,
                size: 19,
              ),
              Text(
                "Tsh ",
                style: TextStyle(fontSize: 11, color: iconColor),
              ),
              Text(
                "120,000",
                style: TextStyle(fontSize: 13, color: iconColor),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                CupertinoIcons.number,
                color: iconColor,
                size: 16,
              ),
              Text(
                "17",
                style: TextStyle(fontSize: 13, color: iconColor),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(children: const [
            Expanded(
                child: Divider(
              color: iconColor,
            )),
            Text(
              "CART",
              style: TextStyle(fontSize: 10, color: iconColor),
            ),
            Expanded(
                child: Divider(
              color: iconColor,
            )),
          ]),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                CupertinoIcons.money_dollar,
                color: iconColor,
                size: 19,
              ),
              Text(
                "Tsh ",
                style: TextStyle(fontSize: 11, color: iconColor),
              ),
              Text(
                "00",
                style: TextStyle(fontSize: 13, color: iconColor),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                CupertinoIcons.number,
                color: iconColor,
                size: 16,
              ),
              Text(
                "00",
                style: TextStyle(fontSize: 13, color: iconColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
