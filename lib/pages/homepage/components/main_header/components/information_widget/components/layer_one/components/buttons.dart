import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../style/style_guide.dart';
import 'calculator.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return const Calculator();
                        });
                  },
                  icon: const Icon(
                    CupertinoIcons.circle_grid_3x3,
                    color: iconColor,
                    size: 23.0,
                  )),
              const VerticalDivider(
                color: Colors.black,
                thickness: 2,
              ),
              IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.bell,
                        color: iconColor,
                        size: 23.0,
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
