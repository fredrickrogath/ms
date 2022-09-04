import 'package:flutter/material.dart';

import '../sell/components/item_card.dart';

class Starred extends StatelessWidget {
  const Starred({Key? key}) : super(key: key);

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
