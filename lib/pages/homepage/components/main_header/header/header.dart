import '../components/information_widget/components/layer_one/components/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../style/style_guide.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  // GestureDetector(
                  //   onTap: () {
                  //     showModalBottomSheet(
                  //         isScrollControlled: true,
                  //         context: context,
                  //         builder: (context) {
                  //           return const Profile();
                  //         });
                  //   },
                  //   child: const AvatarGlow(
                  //     endRadius: 40,
                  //     glowColor: Colors.grey,
                  //     // animate: _animate,
                  //     child: Material(
                  //       elevation: 8.0,
                  //       shape: CircleBorder(),
                  //       child: CircleAvatar(
                  //         radius: 25,
                  //         backgroundImage:
                  //             AssetImage('assets/images/logo2.jpg'),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Testing Shop',
                      style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontSize: 16.0,
                          color: iconColor),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.gear,
                    color: iconColor,
                    size: 23.0,
                  )),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.gear,
                    color: iconColor,
                    size: 23.0,
                  )),
              const SizedBox(
                width: 15,
              ),
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
                    Icons.calculate_outlined,
                    color: iconColor,
                    size: 23.0,
                  )),
              const SizedBox(
                width: 15,
              ),
              Stack(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.bell,
                        color: iconColor,
                        size: 23.0,
                      )),
                  const Positioned(
                    right: 0,
                    top: 15,
                    child: Icon(
                      CupertinoIcons.circle_fill,
                      color: Color(0xFFcc444b),
                      size: 11.0,
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   width:0,
              // ),
              // Container(
              //   height: 80,
              //   width: 20,
              //   padding: const EdgeInsets.only(top: 5, bottom: 5),
              //   decoration: BoxDecoration(
              //       color: isDark
              //           ? Colors.transparent
              //           : Colors.black38.withOpacity(0.8),
              //       border: Border.all(),
              //       borderRadius: const BorderRadius.all(
              //           Radius.circular(20))),
              //   child: GestureDetector(
              //     onTap: () {
              //       isDark = !isDark;
              //       // darkNotifier.value = isDark;
              //       context.read<DarkMode>().saveTheme(isDark);
              //     },
              //     child: isDark
              //         ? Image.asset('assets/images/bulb_on.png')
              //         : Image.asset('assets/images/bulb_off.png'),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
