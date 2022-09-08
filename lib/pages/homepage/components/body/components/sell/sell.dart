import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../../../db/entities.dart';
import '../../../../../../objectbox.g.dart';
import 'components/item_card.dart';

class Sell extends StatefulWidget {
  const Sell({
    Key? key,
  }) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

  late Store store;

  late Stream<List<Item>> _stream;

  bool hasBeenInitialized = false;

  @override
  void initState() {
    print('11');
    getApplicationDocumentsDirectory().then((dir) {
      print('22');
      store = Store(
        getObjectBoxModel(),
        directory: join(dir.path, 'objectbox'),
      );
      print('33');

      setState(() {
        _stream = store
            .box<Item>()
            .query()
            .watch(triggerImmediately: true)
            .map((query) => query.find());
        hasBeenInitialized = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // store.close();
    super.dispose();
    store.close();
  }

  @override
  Widget build(BuildContext context) {
    // NOTE: SliverList MUST BE INSIDE CustomScrollView
    return 
    
    // !hasBeenInitialized
    //     ? const Center(
    //         child: CircularProgressIndicator(),
    //       )
    //     : StreamBuilder<List<Item>>(
    //         stream: _stream,
    //         builder: (context, snapshot) {
    //           if (!snapshot.hasData) {
    //             return const Center(
    //               child: CircularProgressIndicator(),
    //             );
    //           }

    //           return Center(child: Text('${snapshot.data?.length}'));

    //           // return ItemCard(
    //           //   items: snapshot.data!,
    //           //   index: 1,
    //           // );
    //         });

    CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ItemCard(
                index: index,
              );
            }, childCount: 100),
          ),
        ]);
  }
}
