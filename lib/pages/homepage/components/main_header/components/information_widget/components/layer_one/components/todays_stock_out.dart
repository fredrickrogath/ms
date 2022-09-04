import 'package:flutter/material.dart';

import '../../../../../../../../../style/style_guide.dart';

class TodaysStockOut extends StatelessWidget {
  const TodaysStockOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Today\'s stock out',
              style: TextStyle(fontSize: 13.0, color: iconColor),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                '# 103',
                style: TextStyle(
                    color: Color(0xFF337A6F),
                    // fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
