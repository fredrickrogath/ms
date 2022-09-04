import 'package:flutter/material.dart';
// import '../../header/header.dart';

class CollapseInformationWidget extends StatelessWidget {
  const CollapseInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Today's Profit",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Spacer(),
            Text(
              'Tsh 11200',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFF337A6F),
              ),
            ),
            Text(
              ' I ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Text(
              "Today's Expenses",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Spacer(),
            Text(
              'Tsh 400',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFF941b0c),
              ),
            ),
          ],
        ),

        //SEARCH BAR
        // const Header(),
      ],
    );
  }
}
