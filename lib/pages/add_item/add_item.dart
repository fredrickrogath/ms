import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:provider/provider.dart';
// import '../../providers/item_provider.dart';
import '../../db/entities.dart';
import '../../objectbox.g.dart';
import '../../style/style_guide.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  AddItemState createState() => AddItemState();
}

class AddItemState extends State<AddItem> {
  // Box<Item> itemBox = objectBox.store.box<Item>();

  Store? store;
  Box<Item>? itemBox;

  var activeButton = 'product';
  var expireDate = '';
  var stockDate = '';
  double heightFrame = 0;
  double widthFrame = 0;
  // late FToast fToast;

  String itemName = '';
  // String imagePath = '';
  String item = '';
  String itemCode = '';
  String itemExpiry = '';
  String itemQuantity = '';
  String itemSalePrice = '';
  String itemPurchasePrice = '';

  final _formKey = GlobalKey<FormState>();

  //  late Store store;

  // bool hasBeenInitialized = false;

  late Item _item;

  final now = DateTime.now();

  addItem() {
    // _item = Item(
    //   name: 'sangara',
    //   imagePath: 'logo.png',
    //   sellPrice: 25000.0,
    //   purchasePrice: 1800.0,
    //   stockCount: 10,
    //   createdAt: now,
    //   updatedAt: now,
    // );

    // var store = await ObjectBoxStore.getStore();

    // store.box<Item>().put(_item);

    // print('hello');
  }

  @override
  void initState() {
    // getApplicationDocumentsDirectory().then((dir) {
    //   store = Store(
    //     getObjectBoxModel(),
    //     directory: join(dir.path, 'objectbox'),
    //   );

    //   setState(() {
    //     hasBeenInitialized = true;
    //   });
    // });
    super.initState();

    openStore().then((Store store) => itemBox = store.box<Item>());
  }

  @override
  void dispose() {
    store?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // heightFrame = MediaQuery.of(context).size.height;
    // widthFrame = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('New Item',
                style: TextStyle(color: iconColor, fontSize: 15)),
            leading: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0.0,
              ),
              onPressed: () {
                Navigator.pop(context);
                SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                    overlays: []);
              },
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.grey,
                size: 25,
              ),
            ),
            elevation: 0.0,
          ),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //ITEM Image
                  Align(alignment: Alignment.center, child: buildItemImage()),
                  const SizedBox(
                    height: 90,
                  ),
                  //ITEM NAME
                  buildItemName(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildPurchasePrice(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildSellPrice(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildStockCount(),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                      alignment: Alignment.center, child: buildSubmitButton()),
                ],
              ),
            ),
          )),
    );
  }

  Widget buildItemImage() => Center(
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.photo,
              color: iconColor,
              size: 90,
            )),
      );

  Widget buildItemName() => Column(
        children: [
          Row(children: const [
            Expanded(
                child: Divider(
              color: iconColor,
            )),
            Text(
              "ITEM NAME",
              style: TextStyle(fontSize: 10, color: iconColor),
            ),
            Expanded(
                child: Divider(
              color: iconColor,
            )),
          ]),
          TextFormField(
            style: const TextStyle(color: Colors.grey),
            decoration: const InputDecoration(
                filled: true,
                labelText: "Item Name",
                fillColor: Colors.white12,
                labelStyle: TextStyle(
                    color: iconColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                contentPadding: EdgeInsetsDirectional.all(8)),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              // return null;
              debugPrint('Value  "$value"');
            },
            // onSaved: (String? value) {
            //   debugPrint('Value  "$value"');
            // },
          ),
        ],
      );

  Widget buildPurchasePrice() => Column(
        children: [
          Row(children: const [
            Expanded(
                child: Divider(
              color: iconColor,
            )),
            Text(
              "PURCHASE PRICE",
              style: TextStyle(fontSize: 10, color: iconColor),
            ),
            Expanded(
                child: Divider(
              color: iconColor,
            )),
          ]),
          TextFormField(
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.grey),
            decoration: const InputDecoration(
                filled: true,
                labelText: "Purchase price",
                fillColor: Colors.white12,
                labelStyle: TextStyle(
                    color: iconColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                contentPadding: EdgeInsetsDirectional.all(8)),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please purchase price of an item';
              }
              return null;
            },
          ),
        ],
      );

  Widget buildSellPrice() => Column(
        children: [
          Row(children: const [
            Expanded(
                child: Divider(
              color: iconColor,
            )),
            Text(
              "SELLING PRICE",
              style: TextStyle(fontSize: 10, color: iconColor),
            ),
            Expanded(
                child: Divider(
              color: iconColor,
            )),
          ]),
          TextFormField(
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.grey),
            decoration: const InputDecoration(
                filled: true,
                labelText: "Selling price",
                fillColor: Colors.white12,
                labelStyle: TextStyle(
                    color: iconColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                contentPadding: EdgeInsetsDirectional.all(8)),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please selling price of an item';
              }
              return null;
            },
          ),
        ],
      );

  Widget buildStockCount() => Column(
        children: [
          Row(children: const [
            Expanded(
                child: Divider(
              color: iconColor,
            )),
            Text(
              "STOCK COUNT",
              style: TextStyle(fontSize: 10, color: iconColor),
            ),
            Expanded(
                child: Divider(
              color: iconColor,
            )),
          ]),
          TextFormField(
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.grey),
            decoration: const InputDecoration(
                filled: true,
                labelText: "Stock Count",
                fillColor: Colors.white12,
                labelStyle: TextStyle(
                    color: iconColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  // borderRadius: BorderRadius.circular(25.0),
                ),
                contentPadding: EdgeInsetsDirectional.all(8)),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please stock count of an item';
              }
              return null;
            },
          ),
        ],
      );

  Widget buildSubmitButton() => Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 100,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 28, 87, 80),
            onPressed: () async {
              addItem();
              _item = Item(
                name: 'sangara',
                imagePath: 'logo.png',
                sellPrice: 25000.0,
                purchasePrice: 1800.0,
                stockCount: 10,
                createdAt: now,
                updatedAt: now,
              );

              itemBox!.put(_item);

              // var person =
              // PersonDetail(name: "Mac", lastName: "anthony", personAge: 25);
              // int id = await Helpers.insert(person);
              // print("Sucessfull inserted an object with $id");
            },
            child: const Text(
              'ADD',
              style: TextStyle(color: iconColor, fontSize: 10),
            ),
          ),
        ),
      )

      // ElevatedButton(
      //   onPressed: () {
      //     // Validate returns true if the form is valid, or false otherwise.
      //     // if (_formKey.currentState!.validate()) {
      //     //   // If the form is valid, display a snackbar. In the real world,
      //     //   // you'd often call a server or save the information in a database.
      //     //   ScaffoldMessenger.of(context).showSnackBar(
      //     //     const SnackBar(content: Text('Processing Data')),
      //     //   );
      //     // }

      //     // context.read<ItemProvider>().addItem();

      //     addItem();
      //   },
      //   style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all(
      //       const Color.fromARGB(255, 28, 87, 80),
      //     ),
      //     padding: MaterialStateProperty.all(
      //         const EdgeInsets.symmetric(horizontal: 50)),
      //     // textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
      //   ),
      //   child: const Text(
      //     'ADD',
      //     style: TextStyle(color: iconColor, fontSize: 13),
      //   ),
      // ),
      );
}
