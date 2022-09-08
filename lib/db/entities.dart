import 'package:objectbox/objectbox.dart';

@Entity()

//CLASS FOR ITEMS MODEL
class Item {
  int id;
  String name;
  String imagePath;
  double sellPrice;
  double stockCount;
  DateTime createdAt;
  DateTime updatedAt;
  double purchasePrice;

  Item({
    this.id = 0,
    required this.name,
    required this.imagePath,
    required this.sellPrice,
    required this.createdAt,
    required this.updatedAt,
    required this.stockCount,
    required this.purchasePrice,
  });
}

//CLASS FOR INVOICE MODEL
@Entity()
class Invoice {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  @Backlink()
  final orderItem = ToMany<OrderItem>();

  Invoice({
    this.id = 0,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
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
