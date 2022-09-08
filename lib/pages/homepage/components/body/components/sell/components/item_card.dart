import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import 'components/Card_grouped_buttons.dart';
import 'components/card_cart_buttons.dart';
import 'components/card_image.dart';

class ItemCard extends StatefulWidget {
  final int index;
  // final List<Item> items;
  const ItemCard({Key? key, required this.index})
      : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

  @override
  Widget build(BuildContext context) {
    return 

        Column(
          children: [
            Slidable(
                // Specify a key if the Slidable is dismissible.
                key: Key('${widget.index}'),
                startActionPane: ActionPane(
                  dragDismissible: false,
                  // A motion is a widget used to control how the pane animates.
                  motion: const DrawerMotion(),

                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  // All actions are defined in the children parameter.
                  children: [
                    // A SlidableAction can have an icon and/or a label.
                    const SlidableAction(
                      onPressed: null,
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF337A6F),
                      icon: CupertinoIcons.info_circle
                      // label: 'Purchase',
                    ),
                    const SlidableAction(
                      onPressed: null,
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF337A6F),
                      icon: CupertinoIcons.pencil,
                      // label: 'Edit item',
                    ),
                    SlidableAction(
                      onPressed: (context) {
                        // deleteItem(_item.id);
                        // refreshItems();
                      },
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: const Color(0xFF941b0c),
                      icon: CupertinoIcons.delete,
                      // label: 'Remove',
                      // spacing: 10.0,
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                endActionPane: const ActionPane(
                  motion: DrawerMotion(),
                  children: [
                    SlidableAction(
                      // An action can be bigger than the others.
                      // flex: 1,
                      onPressed: null,
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF337A6F),
                      // icon: Icons.monetization_on_outlined,
                      label: '10',
                    ),

                    SlidableAction(
                      // An action can be bigger than the others.
                      // flex: 1,
                      onPressed: null,
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF337A6F),
                      // icon: Icons.monetization_on_outlined,
                      label: '5',
                    ),

                    SlidableAction(
                      // flex: 1,
                      onPressed: null,
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF941b0c),
                      // icon: Icons.money_off_csred_sharp,
                      label: '10',
                    ),

                    SlidableAction(
                      // flex: 1,
                      onPressed: null,
                      autoClose: false,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Color(0xFF941b0c),
                      // icon: Icons.money_off_csred_sharp,
                      label: '5',
                    ),
                  ],
                ),

                // The child of the Slidable is what the user sees when the
                // component is not dragged.
                child: Card(
                    // color: const Color(0xff172224),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: SizedBox(
                      height: 150,
                      child: Row(children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              //item image
                              const Expanded(
                                flex: 3,
                                child: ItemCardImage(),
                              ),

                              //bar with favourite icon
                              Expanded(
                                  flex: 1,
                                  child:
                                      ItemCardGroupedButtons(index: widget.index))
                            ],
                          ),
                        ),

                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                        ),

                        //item details & cart buttons
                        const Expanded(flex: 2, child: CartItemCartButtons())
                      ]),
                    ))),
          ],
        )

        ;
  }
}
