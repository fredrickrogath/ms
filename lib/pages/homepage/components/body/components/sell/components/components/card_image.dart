import 'package:flutter/material.dart';

class ItemCardImage extends StatelessWidget {
  const ItemCardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          'assets/images/fish.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
