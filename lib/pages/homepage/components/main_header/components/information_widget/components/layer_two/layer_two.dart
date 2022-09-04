import 'package:flutter/material.dart';

import 'components/buttons.dart';
import 'components/months_dispose.dart';
import 'components/todays_expenses.dart';

class LayerTwo extends StatelessWidget {
  const LayerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:const  [
         SizedBox(
          width: 150,
          child: TodaysExpenses()),

         SizedBox(
          width: 140,
          child: MonthsDispose()),

         Buttons()
      ],
    );
  }
}
