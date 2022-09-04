import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ms/pages/add_item/add_item.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../../../../../style/style_guide.dart';

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
                    // showModalBottomSheet(
                    //     isScrollControlled: true,
                    //     context: context,
                    //     builder: (context) {
                    //       return const Calculator();
                    //     });
                  },
                  icon: const Icon(
                    CupertinoIcons.settings,
                    color: iconColor,
                    size: 23.0,
                  )),
              const VerticalDivider(
                color: Colors.black,
                thickness: 2,
              ),
              IconButton(
                  onPressed: () {
                    // showModalBottomSheet(
                    //       isScrollControlled: true,
                    //       context: context,
                    //       builder: (context) {
                    //         return const AddItem();
                    //       });

                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const AddItem()));
                  },
                  icon: const Icon(
                    CupertinoIcons.add_circled,
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
