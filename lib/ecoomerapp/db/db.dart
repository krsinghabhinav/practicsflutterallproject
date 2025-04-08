import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/productmodel.dart';

class CartDBHelper {
  static Database? _db;

  // Get or initialize the database
  Future<Database> get _database async {
    _db ??= await _initDB();
    return _db!;
  }

  // Initialize the database
  Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'cart.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE cart(
            id TEXT PRIMARY KEY,
            name TEXT,
            price REAL,
            image TEXT
          )
        ''');
      },
    );
  }

  // Insert or update an item
  Future<void> insertItem(ProductModel item) async {
    final db = await _database;
    await db.insert(
      'cart',
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete item by ID
  Future<void> deleteItem(String id) async {
    final db = await _database;
    await db.delete('cart', where: 'id = ?', whereArgs: [id]);
  }

  // Get all cart items
  Future<List<ProductModel>> fetchItems() async {
    final db = await _database;
    final maps = await db.query('cart');
    return maps.map((e) => ProductModel.fromMap(e)).toList();
  }

  // Clear entire cart
  Future<void> clearCart() async {
    final db = await _database;
    await db.delete('cart');
  }
}
