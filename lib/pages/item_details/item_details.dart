import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ItemDetailsPage extends StatelessWidget {
  final String image;
  final PaletteGenerator palette;

  const ItemDetailsPage({Key? key, required this.palette, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Image.asset(
          //   image,
          //   height: double.infinity,
          //   width: double.infinity,
          //   fit: BoxFit.fitHeight,
          // ),
          Container(
            color: palette.darkMutedColor?.color.withOpacity(0.8),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 120,
                ),
                // NameWidget(
                //   name: member.name,
                //   style: nameBigStyle.copyWith(color: palette.lightMutedColor.color),
                // ),
                // SizedBox(height: size_8),
                // Text(member.occupation,
                //     style: descriptionBoldStyle.copyWith(color: palette.lightMutedColor.color)),
                // SizedBox(height: size_20),
                // Expanded(
                //   flex: 2,
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.vertical,
                //     child: Text(member.description, style: descriptionStyle),
                //   ),
                // ),
               const SizedBox(height: 20),
                // Text("Our Team Members".toUpperCase(), style: descriptionBoldStyle),
                // SizedBox(height: size_8),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Text('hello suggestions');
                        // return ClippedImage(compactMode: true, imagePath: members[index].imagePath);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 12);
                      },
                      itemCount: 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
