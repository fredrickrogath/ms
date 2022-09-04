import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_details.dart';

class CartItemCartButtons extends StatelessWidget {
  const CartItemCartButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //item details
        Expanded(
          flex: 3,
          child: GestureDetector(
            onTap: () {
              // _generatePalette(context,
              //         'assets/images/fish.jpg')
              //     .then((palette) {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) =>
              //               ItemDetailsPage(
              //                   image:
              //                       'assets/images/fish.jpg',
              //                   palette:
              //                       palette)));
              // });

              //modal for the more details on the item
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Image.asset(
                      'assets/images/fish.jpg',
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fitHeight,
                    );
                  });
            },

            //details
            child: const CardItemDetails(),
          ),
        ),

        const VerticalDivider(
          color: Colors.black,
          thickness: 2,
        ),

        //cart buttons
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add_circled,
                  color: Color(0xFF337A6F),
                )),
            const SizedBox(
              height: 15,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add_circled,
                  color: Color(0xFF941b0c),
                )),
            // const SizedBox(
            //   height: 10,
            // ),
          ],
        ),
      ],
    );
  }
}
