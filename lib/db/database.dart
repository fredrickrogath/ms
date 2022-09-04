import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import '../models/item.dart';

class ItemsDatabase {
  static final ItemsDatabase instance = ItemsDatabase._init();

  static Database? _database;

  ItemsDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('test.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(
    Database db,
    int version,
  ) async {
    const idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    const textType = "TEXT NULL";
    const doubleType = "DOUBLE NULL";

    await db.execute('''
  CREATE TABLE $tableItems (
  ${ItemFields.id} $idType,
  ${ItemFields.quantity} $doubleType,
  ${ItemFields.salePrice} $doubleType,
  ${ItemFields.purchasePrice} $doubleType,
  ${ItemFields.imagePath} $textType,
  ${ItemFields.name} $textType,
  ${ItemFields.itemCode} $textType,
  ${ItemFields.expiry} $textType,
  ${ItemFields.primaryUnit} $textType,
  ${ItemFields.secondaryUnit} $textType,
  ${ItemFields.primaryUnitCost} $doubleType,
  ${ItemFields.secondaryUnitCost} $doubleType,
  ${ItemFields.category} $textType,
  ${ItemFields.aboutItem} $textType,
  ${ItemFields.createdAt} $textType
  )
  ''');
  }

  Future<Item> create(Item item) async {
    final db = await instance.database;
    final id = await db.insert(tableItems, item.toJson());
    return item.copy(id: id);
  }

  Future<Item> readItem(int id) async {
    final db = await instance.database;
    final maps = await db.query(
      tableItems,
      columns: ItemFields.values,
      where: '${ItemFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Item.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Item>> readAllItems() async {
    final db = await instance.database;

    const orderBy = '${ItemFields.createdAt} ASC';
    final result = await db.query(tableItems, orderBy: orderBy);
    return result.map((json) => Item.fromJson(json)).toList();
  }

  Future<List<Item>> readProducts() async {
    final db = await instance.database;

    const orderBy = '${ItemFields.createdAt} ASC';
    const where = '${ItemFields.category} = product';
    final result = await db.query(tableItems, orderBy: orderBy, where: where);
    return result.map((json) => Item.fromJson(json)).toList();
  }

  Future<int> update(Item item) async {
    final db = await instance.database;

    return db.update(tableItems, item.toJson(),
        where: '${ItemFields.id} = ?', whereArgs: [item.id]);
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableItems,
      where: '${ItemFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
