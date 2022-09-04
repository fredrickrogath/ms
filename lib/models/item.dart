const String tableItems = 'items';

class ItemFields {
  static final List<String> values = [
    id,
    name,
    expiry,
    quantity,
    category,
    itemCode,
    imagePath,
    aboutItem,
    salePrice,
    createdAt,
    primaryUnit,
    purchasePrice,
    secondaryUnit,
    primaryUnitCost,
    secondaryUnitCost,
  ];

  static const String id = '_id';
  static const String name = 'name';
  static const String expiry = 'expiry';
  static const String quantity = 'quantity';
  static const String category = 'category';
  static const String itemCode = 'itemCode';
  static const String aboutItem = 'aboutItem';
  static const String salePrice = 'salePrice';
  static const String imagePath = 'imagePath';
  static const String createdAt = 'createdAt';
  static const String primaryUnit = 'primaryUnit';
  static const String purchasePrice = 'purchasePrice';
  static const String secondaryUnit = 'secondaryUnit';
  static const String primaryUnitCost = 'primaryUnitCost';
  static const String secondaryUnitCost = 'secondaryUnitCost';
}

class Item {
  final int? id;
  final double salePrice,
      quantity,
      purchasePrice,
      primaryUnitCost,
      secondaryUnitCost;
  final String imagePath,
      name,
      expiry,
      itemCode,
      category,
      aboutItem,
      primaryUnit,
      secondaryUnit;
  final DateTime createdAt;

  const Item({
    this.id,
    required this.name,
    required this.expiry,
    required this.quantity,
    required this.category,
    required this.itemCode,
    required this.createdAt,
    required this.aboutItem,
    required this.imagePath,
    required this.salePrice,
    required this.primaryUnit,
    required this.secondaryUnit,
    required this.purchasePrice,
    required this.primaryUnitCost,
    required this.secondaryUnitCost,
  });

  static Item fromJson(Map<String, Object?> json) => Item(
        id: json[ItemFields.id] as int?,
        name: json[ItemFields.name] as String,
        expiry: json[ItemFields.expiry] as String,
        quantity: json[ItemFields.quantity] as double,
        category: json[ItemFields.category] as String,
        itemCode: json[ItemFields.itemCode] as String,
        aboutItem: json[ItemFields.aboutItem] as String,
        imagePath: json[ItemFields.imagePath] as String,
        salePrice: json[ItemFields.salePrice] as double,
        primaryUnit: json[ItemFields.primaryUnit] as String,
        secondaryUnit: json[ItemFields.secondaryUnit] as String,
        purchasePrice: json[ItemFields.purchasePrice] as double,
        primaryUnitCost: json[ItemFields.primaryUnitCost] as double,
        secondaryUnitCost: json[ItemFields.secondaryUnitCost] as double,
        createdAt: DateTime.parse(json[ItemFields.createdAt] as String),
      );
  Map<String, Object?> toJson() => {
        ItemFields.id: id,
        ItemFields.name: name,
        ItemFields.expiry: expiry,
        ItemFields.quantity: quantity,
        ItemFields.category: category,
        ItemFields.itemCode: itemCode,
        ItemFields.aboutItem: aboutItem,
        ItemFields.imagePath: imagePath,
        ItemFields.salePrice: salePrice,
        ItemFields.primaryUnit: primaryUnit,
        ItemFields.secondaryUnit: secondaryUnit,
        ItemFields.purchasePrice: purchasePrice,
        ItemFields.primaryUnitCost: primaryUnitCost,
        ItemFields.secondaryUnitCost: secondaryUnitCost,
        ItemFields.createdAt: createdAt.toIso8601String(),
      };
  Item copy({
    int? id,
    String? name,
    String? expiry,
    double? quantity,
    String? category,
    String? itemCode,
    String? aboutItem,
    String? imagePath,
    double? salePrice,
    DateTime? createdAt,
    String? primaryUnit,
    String? secondaryUnit,
    double? purchasePrice,
    double? primaryUnitCost,
    double? secondaryUnitCost,
  }) =>
      Item(
        id: id ?? this.id,
        name: name ?? this.name,
        expiry: expiry ?? this.expiry,
        quantity: quantity ?? this.quantity,
        category: category ?? this.category,
        itemCode: itemCode ?? this.itemCode,
        createdAt: createdAt ?? this.createdAt,
        aboutItem: aboutItem ?? this.aboutItem,
        imagePath: imagePath ?? this.imagePath,
        salePrice: salePrice ?? this.salePrice,
        primaryUnit: primaryUnit ?? this.primaryUnit,
        secondaryUnit: secondaryUnit ?? this.secondaryUnit,
        purchasePrice: purchasePrice ?? this.purchasePrice,
        primaryUnitCost: primaryUnitCost ?? this.primaryUnitCost,
        secondaryUnitCost: secondaryUnitCost ?? this.secondaryUnitCost,
      );
}
