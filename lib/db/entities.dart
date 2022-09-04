import 'package:objectbox/objectbox.dart';

@Entity()

//CLASS FOR ITEMS MODEL
class Item {
  int id;
  String name;
  String imagePath;
  double sellPrice;
  double stockCount;
  double purchasePrice;

  Item(
      {this.id = 0,
      required this.name,
      required this.imagePath,
      required this.purchasePrice,
      required this.sellPrice,
      required this.stockCount});
}

//CLASS FOR ORDER MODEL
@Entity()
class Invoice {
  int id;
  String name;

  @Backlink()
  final orderItem = ToMany<OrderItem>();

  Invoice({
    this.id = 0,
    required this.name,
  });
}

//CLASS FOR ORDERITEM MODEL
@Entity()
class OrderItem {
  int id;
  String name;
  double price;
  int quantity;

  final invoice = ToOne<Invoice>();

  OrderItem({
    this.id = 0,
    required this.name,
    required this.price,
    required this.quantity,
  });
}
