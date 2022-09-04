import 'package:flutter/cupertino.dart';
import 'components/buttons.dart';
import 'components/todays_sales.dart';
import 'components/todays_stock_out.dart';

class LayerOne extends StatelessWidget {
  const LayerOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        SizedBox(
          width: 150,
          child: TodaysSales()),
        SizedBox(
          width: 140,
          child: TodaysStockOut()),
        Buttons()
      ],
    );
  }
}
