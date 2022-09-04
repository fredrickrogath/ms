import 'package:flutter/material.dart';

import '../../../../../../../../../style/style_guide.dart';

class MonthsDispose extends StatelessWidget {
  const MonthsDispose({Key? key}) : super(key: key);

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
              'Month\'s dispose',
              style: TextStyle(fontSize: 13.0, color: iconColor),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                '# 13',
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
