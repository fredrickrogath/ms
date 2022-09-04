import 'dart:math';

import 'package:flutter/material.dart';
import 'components/collapse_information_widget/collapse_information_widget.dart';
// import 'header/header.dart';
import 'components/information_widget/information_widget.dart';

class MainHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double shrinkPercentage = min(1, shrinkOffset / (maxExtent - minExtent));

    // bool isDark = context.watch<DarkMode>().getCurrentTheme;
    // bool isDark = true;
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ConstrainedBox(
          //   constraints: BoxConstraints.tightFor(
          //     //SHRINKING AND UNSHRINKING OF HEADERS
          //     height: max(
          //       0,
          //       100 * (1 - shrinkPercentage),
          //     ),
          //   ),
          //   child: const FittedBox(
          //     // fit: BoxFit.fill,
          //     // alignment: Alignment.center,
          
          //     //HEADER
          //     child: Header(),
          //   ),
          // ),
          
          Expanded(         
            child: Stack(
              // alignment: Alignment.bottomCenter,
              children: [
                if (shrinkPercentage != 1)
                  Opacity(
                    opacity: 1 - shrinkPercentage,

                    //INFORMATION WIDGET
                    child: const InformationWidget(),
                  ),
                if (shrinkPercentage != 0)
                  Opacity(
                    opacity: shrinkPercentage,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),

                      //COLLAPSE INFOARTION WIDGET
                      child: CollapseInformationWidget(),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
