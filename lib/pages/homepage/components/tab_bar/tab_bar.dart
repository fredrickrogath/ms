import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'components/profile.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //LOGO IMAGE

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 16.0),
                child: Material(
                  elevation: 8.0,
                  shape: const CircleBorder(),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return const Profile();
                          });
                    },
                    child: const AvatarGlow(
                      duration: Duration(milliseconds: 1900),
                      endRadius: 27,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
              ),

              // _buildTabBar(),
              // TabBarWidget(),
            ],
          ),
        ),

        //TAB BAR START
        Container(
          height: 30,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              // BoxShadow(
              //   // color: darkColor.withOpacity(0.4),
              //   // blurRadius: 1,
              //   offset: const Offset(0, 1), // changes position of shadow
              // ),
            ],
          ),
          child: Row(
            children: [
              TabBar(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  // labelColor: Colors.white.withOpacity(0.9),
                  unselectedLabelColor: Colors.grey,
                  labelPadding: const EdgeInsets.only(
                      left: 22, right: 22, top: 0, bottom: 0),
                  indicator: BoxDecoration(
                      color: const Color.fromARGB(255, 28, 87, 80),
                      // gradient: indicatorGradient,
                      borderRadius: BorderRadius.circular(20)),
                  labelStyle: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      child: Text(
                        'Sell',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),

                    Tab(
                      child: Text(
                        'Starred',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    // Tab(
                    //   child: Text('Kidney Ability'),
                    // ),
                    Tab(
                      child: Text(
                        'Shared',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),

                    Tab(
                      child: Text(
                        'Report',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ],
    );
  }
}
