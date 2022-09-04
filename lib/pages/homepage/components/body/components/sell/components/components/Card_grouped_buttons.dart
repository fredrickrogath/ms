import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../../../../style/style_guide.dart';

class ItemCardGroupedButtons extends StatefulWidget {
  final int index;
  const ItemCardGroupedButtons({Key? key, required this.index})
      : super(key: key);

  @override
  State<ItemCardGroupedButtons> createState() => _ItemCardGroupedButtonsState();
}

class _ItemCardGroupedButtonsState extends State<ItemCardGroupedButtons> {
  String text = 'abc';

  String subject = 'def';

  List<String> imagePaths = ['assets/images/logo2.jpg'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 0.0),
          child: Text((1 + widget.index).toString().padLeft(2, '0'),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: iconColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0)),
        ),

        IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.add_circled,
                color: Colors.grey, size: 22)),
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.info,
        //         color: Colors.grey, size: 20)),
        IconButton(
            onPressed: () {
              _onShare(context);
            },
            icon: const Icon(CupertinoIcons.paperplane, color: Colors.grey, size: 22)),
        LikeButton(
          likeBuilder: (bool isLiked) {
            return Icon(
              CupertinoIcons.star,
              color: isLiked ? Colors.orange : Colors.grey,
              size: 22,
            );
          },
        ),
      ],
    );
  }

  // void _onDeleteImage(int position) {
  //   setState(() {
  //     imagePaths.removeAt(position);
  //   });
  // }

  void _onShare(BuildContext context) async {
    // A builder is used to retrieve the context immediately
    // surrounding the ElevatedButton.
    //
    // The context's `findRenderObject` returns the first
    // RenderObject in its descendent tree when it's not
    // a RenderObjectWidget. The ElevatedButton's RenderObject
    // has its position and size after it's built.
    final box = context.findRenderObject() as RenderBox?;

    if (imagePaths.isNotEmpty) {
      await Share.shareFiles(imagePaths,
          text: text,
          subject: subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    } else {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    }
  }

  // void _onShareWithResult(BuildContext context) async {
  //   final box = context.findRenderObject() as RenderBox?;
  //   ShareResult result;
  //   if (imagePaths.isNotEmpty) {
  //     result = await Share.shareFilesWithResult(imagePaths,
  //         text: text,
  //         subject: subject,
  //         sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  //   } else {
  //     result = await Share.shareWithResult(text,
  //         subject: subject,
  //         sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  //   }
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text("Share result: ${result.status}"),
  //   ));
  // }
}
