import 'package:flutter/material.dart';

import '../../../../../../../../../style/style_guide.dart';

class TodaysSales extends StatelessWidget {
  const TodaysSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Today's sales",
                    style: TextStyle(fontSize: 13.0, color: iconColor),
                  ),
                  // Text(
                  //   'Mauzo ya leo',
                  //   style: TextStyle(
                  //       fontStyle: FontStyle.italic,
                  //       color: iconColor),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'Tsh. 120,300',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Color(0xFF337A6F),
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_upward,
                      size: 14,
                      color: Color(0xFF337A6F),
                    ),
                    Text(
                      '10%',
                      style: TextStyle(color: Color(0xFF337A6F), fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_downward,
                      size: 14,
                      color: Color(0xFFC1292E),
                    ),
                    Text(
                      '10%',
                      style: TextStyle(color: Color(0xFFcc444b), fontSize: 10),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
