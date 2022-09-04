import 'package:flutter/material.dart';
import 'components/body/body.dart';
import 'components/main_header/main_header.dart';
import 'components/tab_bar/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  
  // final scrollController = ScrollController();

  // final double itemSize = 320.0;

  // void onListen() {
  //   // setState(() {});
  // }

  // var paletteGenerator;

  // Future<PaletteGenerator> _updatePaletteGenerator() async {
  //   paletteGenerator = await PaletteGenerator.fromImageProvider(
  //     Image.asset("assets/images/fish.jpg").image,
  //   );
  //   return paletteGenerator;
  // }

  // Future<PaletteGenerator> _generatePalette(context, String imagePath) async {
  //   PaletteGenerator _paletteGenerator =
  //       await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
  //           size: Size(110, 150), maximumColorCount: 20);

  //   return _paletteGenerator;
  // }

  // final List<String> listItems = [];

  // final List<String> _tabs = <String>[
  //   "Featured",
  //   "Popular",
  //   "Latest",
  // ];

  // @override
  // void initState() {
  //   // scrollController.addListener(onListen);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // scrollController.removeListener(onListen);
  //   super.dispose();
  // }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    // bool isDark = context.watch<DarkMode>().getCurrentTheme;

    // return Material(
    //   child: Scaffold(
    //     body:
        
        
    //         TabBarView(
    //           // These are the contents of the tab views, below the tabs.
    //           children:

    //            _tabs.map((String name) {
    //             return SafeArea(
    //               top: false,
    //               bottom: false,
    //               child: Builder(
    //                 // This Builder is needed to provide a BuildContext that is "inside"
    //                 // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
    //                 // find the NestedScrollView.
    //                 builder: (BuildContext context) {
    //                   return CustomScrollView(
    //                     // The "controller" and "primary" members should be left
    //                     // unset, so that the NestedScrollView can control this
    //                     // inner scroll view.
    //                     // If the "controller" property is set, then this scroll
    //                     // view will not be associated with the NestedScrollView.
    //                     // The PageStorageKey should be unique to this ScrollView;
    //                     // it allows the list to remember its scroll position when
    //                     // the tab view is not on the screen.
    //                     key: PageStorageKey<String>(name),
    //                     slivers: <Widget>[
    //                       SliverOverlapInjector(
    //                         // This is the flip side of the SliverOverlapAbsorber above.
    //                         handle:
    //                             NestedScrollView.sliverOverlapAbsorberHandleFor(
    //                                 context),
    //                       ),
    //                       SliverPadding(
    //                         padding: const EdgeInsets.all(8.0),
    //                         // In this example, the inner scroll view has
    //                         // fixed-height list items, hence the use of
    //                         // SliverFixedExtentList. However, one could use any
    //                         // sliver widget here, e.g. SliverList or SliverGrid.
    //                         sliver: SliverFixedExtentList(
    //                           // The items in this example are fixed to 48 pixels
    //                           // high. This matches the Material Design spec for
    //                           // ListTile widgets.
    //                           itemExtent: 60.0,
    //                           delegate: SliverChildBuilderDelegate(
    //                             (BuildContext context, int index) {
    //                               // This builder is called for each child.
    //                               // In this example, we just number each list item.
    //                               return Container(
    //                                   color: Colors.transparent
    //                                       .withOpacity(1.0),child: Text('$index'),);
    //                             },
    //                             // The childCount of the SliverChildBuilderDelegate
    //                             // specifies how many children this inner list
    //                             // has. In this example, each tab has a list of
    //                             // exactly 30 items, but this is arbitrary.
    //                             childCount: 30,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   );
    //                 },
    //               ),
    //             );
    //           }).toList(),
    //         ),
    //       ),
      
    // );

    return  Scaffold(
        // drawer: const ComplexDrawer(),
        body:

      //   DefaultTabController(
      // length: 4,
      // child: Scaffold(
      //   body: NestedScrollView(
      //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //       return <Widget>[
      //         SliverOverlapAbsorber(
      //           handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      //           sliver: SliverAppBar(
      //             title: 
      //                     SliverPersistentHeader(
      //               pinned: true, floating: true, delegate: MainHeader()),
      //             floating: true,
      //             pinned: true,
      //             snap: true,
      //             forceElevated: innerBoxIsScrolled,
      //             bottom: 
      //             TabBar(
      //             physics: const AlwaysScrollableScrollPhysics(
      //                 parent: BouncingScrollPhysics()),
      //             indicatorSize: TabBarIndicatorSize.tab,
      //             isScrollable: true,
      //             // labelColor: Colors.white.withOpacity(0.9),
      //             unselectedLabelColor: Colors.grey,
      //             labelPadding: const EdgeInsets.only(
      //                 left: 22, right: 22, top: 0, bottom: 0),
      //             indicator: BoxDecoration(
      //               color: const Color.fromARGB(255, 28, 87, 80),
      //                 // gradient: indicatorGradient,
      //                 borderRadius: BorderRadius.circular(20)),
      //             labelStyle: const TextStyle(
      //                 fontSize: 13, fontWeight: FontWeight.bold),
      //             tabs: const [
      //               Tab(
      //                 child: Text(
      //                   'Sell',
      //                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      //                 ),
      //               ),

      //               Tab(
      //                 child: Text(
      //                   'Starred',
      //                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      //                 ),
      //               ),
      //               // Tab(
      //               //   child: Text('Kidney Ability'),
      //               // ),
      //               Tab(
      //                 child: Text(
      //                   'Shared',
      //                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      //                 ),
      //               ),

      //               Tab(
      //                 child: Text(
      //                   'Report',
      //                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      //                 ),
      //               ),
      //             ]),
      //           ),
      //         ),
      //       ];
      //     },
          // body: 
          // TabBarView(
          //   children: _tabs.map((String name) {
          //     return SafeArea(
          //       top: false,
          //       bottom: false,
          //       child: Builder(
          //         builder: (BuildContext context) {
          //           return CustomScrollView(
          //             key: PageStorageKey<String>(name),
          //             slivers: <Widget>[
          //               SliverOverlapInjector(
          //                 handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          //               ),
          //               SliverPadding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 sliver: SliverList(
          //                   delegate: SliverChildBuilderDelegate(
          //                     (BuildContext context, int index) {
          //                       return ListTile(
          //                         title: Text('Item $index'),
          //                       );
          //                     },
          //                     childCount: 30,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           );
          //         },
          //       ),
          //     );
          //   }).toList(),
          // ),
    //     ),
    //   ),
    // ),
         DefaultTabController(
          length: 4,
          animationDuration: const Duration(milliseconds: 700),
          child: NestedScrollView(
            // controller: scrollController,
            headerSliverBuilder: (context, value) {
              return [
                SliverPersistentHeader(
                    pinned: true, floating: true, delegate: MainHeader()),
               const SliverAppBar(
                  snap: true,
                  pinned: true,
                  floating: true,
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(0.0),
                      child: TabBarWidget()),
                ),
              ];
            },
            body: const Body(),
          ),
        ),
        // floatingActionButton: BottomNavigation()
        );

    // DefaultTabController(
    //   animationDuration: const Duration(milliseconds: 700),
    //   length: 4,
    //   child: Scaffold(
    //     drawer: const ComplexDrawer(),
    //     body: CustomScrollView(
    //       controller: scrollController,
    //       slivers: <Widget>[
    //         // const SliverToBoxAdapter(
    //         //   child: Placeholder(fallbackHeight: 100),
    //         // ),
    //         SliverPersistentHeader(
    //             pinned: true, floating: true, delegate: MyCustomHeader()),
    //         SliverList(
    //           delegate: SliverChildBuilderDelegate(
    //             (context, index) {
    //               // final itemPositionOffset = index * itemSize / 2;
    //               // // index++;
    //               // final difference =
    //               //     scrollController.offset - itemPositionOffset;
    //               // final percent = 1 - (difference / (itemSize / 2));
    //               // print(percent);
    //               // print(scrollController.offset);
    //               // if(index == 0) print(percent);

    //               // double opacity = percent;
    //               // double scale = percent;
    //               // if (opacity > 1.0) opacity = 1.0;
    //               // if (opacity < 0.0) opacity = 0.0;
    //               // if (scale > 1.0) scale = 1.0;

    //               // var palette;
    //               // _generatePalette(context, 'assets/images/fish.jpg')
    //               //     .then((PaletteGenerator _palette) {
    //               //   print(_palette.darkMutedColor?.color);
    //               //   palette = _palette.darkMutedColor?.color;
    //               // });

    //               // Widget child = ;
    //               // return Opacity(
    //               //   opacity: opacity,
    //               //   child: Transform(
    //               //     alignment: Alignment.center,
    //               //     transform: Matrix4.identity()..scale(scale, 1.0),
    //               //     child: ItemCard(index: index),
    //               //     // child: const ParallaxEffect(),
    //               //   ),
    //               // );

    //               return ItemCard(index: index);
    //             },
    //             childCount: 100,
    //           ),
    //         )
    //       ],
    //     ),
    //     // floatingActionButton: FloatingActionButton(
    //     //   onPressed: () {
    //     //     isDark = !isDark;
    //     //     // darkNotifier.value = isDark;
    //     //     context.read<DarkMode>().saveTheme(isDark);
    //     //   },
    //     //   tooltip: 'Increment',
    //     //   child: Icon(isDark ? Icons.wb_sunny_outlined : Icons.bubble_chart),
    //     // ),

    //     // floatingActionButton: FloatingActionButton.extended(
    //     //   onPressed: () {},
    //     //   label: const Text('1320'),
    //     //   icon: const Icon(Icons.shopping_cart_checkout , size: 22,),
    //     //   backgroundColor: const Color(0xFF337A6F),
    //     //   foregroundColor: Colors.white.withOpacity(0.9),
    //     //   extendedTextStyle: const TextStyle(fontSize: 13,),
    //     // )

    // // floatingActionButton: BottomNavigation()
    //   ),
    // );
  }
}
