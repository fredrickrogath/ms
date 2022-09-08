// import 'package:flutter/material.dart';
// import 'package:objectbox/objectbox.dart';
// import 'package:path/path.dart';
// // import 'package:path/path.dart';

// import '../db/entities.dart';
// import '../objectbox.g.dart';

// class ItemProvider extends ChangeNotifier {
//   late Item _item;

//   // List<Item> _items = [];

//   late Store _store;

//   String name = 'hello world';

//   final now = DateTime.now();

//   // initializeDB(){
//   //   _store = Store(
//   //       getObjectBoxModel(),
//   //       directory: join(dir.path, 'objectbox'),
//   //     );
//   // }

//   addItem() {
//     _item = Item(
//       name: 'sangara',
//       imagePath: 'logo.png',
//       sellPrice: 25000,
//       purchasePrice: 1800,
//       stockCount: 0,
//       createdAt: now,
//       updatedAt: now,
//     );

//     _store.box<Item>().put(_item);

//     notifyListeners();
//   }

//   fetchItems() {
//     // print
//   }
// }
