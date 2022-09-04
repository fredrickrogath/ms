import 'package:flutter/material.dart';

import 'components/sell/sell.dart';
import 'components/report/report.dart';
import 'components/shared/shared.dart';
import 'components/starred/starred.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        Sell(),
        Starred(),
        Shared(),
        Report(),
      ],
    );
  }
}
