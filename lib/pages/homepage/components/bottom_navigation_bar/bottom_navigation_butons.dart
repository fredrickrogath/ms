import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  // final dragController = DragController();

  // final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 25.0),
      backgroundColor: const Color(0xFF337A6F),
      buttonSize: const Size(50, 50),
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.chrome_reader_mode, color: Colors.white),
          backgroundColor: const Color(0xFF337A6F),
          // onTap: () => print('Pressed Read Later'),
          label: 'hello1',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: const Icon(Icons.create, color: Colors.white),
          backgroundColor: const Color(0xFF337A6F),
          // onTap: () => print('Pressed Write'),
          label: 'hello2',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child:const Icon(Icons.laptop_chromebook, color: Colors.white),
          backgroundColor: const Color(0xFF337A6F),
          // onTap: () => print('Pressed Code'),
          label: 'hello3',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }
}
