import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/top_sold.dart';

class LayerThree extends StatelessWidget {
  const LayerThree({Key? key}) : super(key: key);

  get iconColor => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Top sold",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        // Spacer(),
        const SizedBox(width: 10),
        const SizedBox(
            width: 291, child: SingleChildScrollView(child: TopSold())),
        GestureDetector(
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              child: Icon(
                CupertinoIcons.eye,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
