import 'package:flutter/material.dart';
// import 'package:palette_generator/palette_generator.dart';

class ViewItem extends StatefulWidget {
  const ViewItem({Key? key}) : super(key: key);

  @override
  State<ViewItem> createState() => _ViewItemState();
}

class _ViewItemState extends State<ViewItem> {
  // ignore: prefer_typing_uninitialized_variables
  var paletteGenerator;

  // Future<PaletteGenerator> _updatePaletteGenerator() async {
  //   paletteGenerator = await PaletteGenerator.fromImageProvider(
  //     Image.asset("assets/images/fish.jpg").image,
  //   );
  //   return paletteGenerator;
  // }

  // FutureBuilder<PaletteGenerator>(
  //                                   future:
  //                                       _updatePaletteGenerator(), // async work
  //                                   builder: (BuildContext context,
  //                                       AsyncSnapshot<PaletteGenerator>
  //                                           snapshot) {
  //                                     switch (snapshot.connectionState) {
  //                                       case ConnectionState.waiting:
  //                                         return const Center(
  //                                             child:
  //                                                 CircularProgressIndicator());
  //                                       default:
  //                                         if (snapshot.hasError)
  //                                           return Text(
  //                                               'Error: ${snapshot.error}');
  //                                         else {
  //                                           // Color color=new Color(snapshot.data.dominantColor.color);
  //                                           var face = snapshot
  //                                               .data!.lightVibrantColor?.color;
  //                                           return Text(
  //                                               'color: ${face.toString()}');
  //                                         }
  //                                     }
  //                                   })

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          AspectRatio(
                            aspectRatio: 4 / 3,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), // Image border
                              child: SizedBox.fromSize(
                                  size:
                                      const Size.fromRadius(48), // Image radius
                                  child: const Image(
                                    image: AssetImage('assets/images/fish.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Positioned(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0.0,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xFF337A6F),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Cocacola zero',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('75 orders',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Tsh 34000 ',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('/caton')
                              ],
                            ),
                            FloatingActionButton.extended(
                              onPressed: () {
                                // Add your onPressed code here
                              },
                              elevation: 0.0,
                              label: const Text(
                                'Add',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF337A6F),
                                ),
                              ),
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xFF337A6F),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                              height: 100.0,
                              width: MediaQuery.of(context).size.width,
                              color: const Color(0xffF1F9F7),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8.0, top: 8.0),
                                child: Text(
                                  "About product :  blabla bla bla njokosi",
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50.0,
                              color: const Color(0xffF1F9F7),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8.0, top: 8.0),
                                child: Text(
                                  "Delivery :  ",
                                  // style: TextStyle(color: Colors.red),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
