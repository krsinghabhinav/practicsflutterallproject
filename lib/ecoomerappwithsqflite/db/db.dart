import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/productmodel.dart';

class CartDBHelper {
  static Database? _db;

  // Get or initialize the database
 Future<Database> get database async {
    if (_db != null) return _db!; // db already created
    _db = await _initDB(); // if db is not all realdy make then create
    return _db!;
  }
  // Initialize the database
  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'cart.db');
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
    final db = await database;
    await db.insert(
      'cart',
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete item by ID
  Future<void> deleteItem(String id) async {
    final db = await database;
    await db.delete('cart', where: 'id = ?', whereArgs: [id]);
  }

  // Get all cart items
  Future<List<ProductModel>> fetchItems() async {
    final db = await database;
    final maps = await db.query('cart');
    return maps.map((e) => ProductModel.fromMap(e)).toList();
  }

  // Clear entire cart
  Future<void> clearCart() async {
    final db = await database;
    await db.delete('cart');
  }
}
