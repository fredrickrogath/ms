import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'components/item_card.dart';

class Sell extends StatefulWidget {
  const Sell({
    Key? key,
  }) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
 
  @override
  Widget build(BuildContext context) {
    // NOTE: SliverList MUST BE INSIDE CustomScrollView
    return CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ItemCard(
                index: index,
              );
            }, childCount: 100),
          ),
        ]);
  }
}
