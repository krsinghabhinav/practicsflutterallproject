import 'package:flutter/material.dart';
import '../db/db.dart';
import '../model/productmodel.dart';
import '../model/productmodeldummydata.dart';


// class CartProvider extends ChangeNotifier {
//   // ✅ This assigns your dummy data to the product list
//   List<ProductModel> productList = dummyProductList;

//   final List<ProductModel> _cartItem = [];
//   List<ProductModel> get cartItems => _cartItem;

//   void addProduct(ProductModel product) {
//     _cartItem.add(product);
//     notifyListeners();
//   }

//   void removeCartItem(String productId) {
//     _cartItem.removeWhere((item) => item.id == productId);
//     notifyListeners();
//   }

//   double get totalPrice {
//     double total = 0;
//     for (var item in _cartItem) {
//       total += item.price ?? 0.0;
//     }
//     return total;
//   }
// }


import 'package:flutter/material.dart';
import '../model/productmodel.dart';

class CartProvider with ChangeNotifier {
  final _dbHelper = CartDBHelper();
  List<ProductModel> _items = [];
  List<ProductModel> productList = dummyProductList;


  CartProvider() {
    _loadCart();
  }

  List<ProductModel> get items => _items;

  double get totalPrice =>
      _items.fold(0.0, (sum, item) => sum + (item.price ?? 0));

  // Load cart from local DB
  Future<void> _loadCart() async {
    _items = await _dbHelper.fetchItems();
    notifyListeners();
  }

  // Add item to cart (even if it's already there)
  Future<void> add(ProductModel product) async {
    _items.add(product);
    await _dbHelper.insertItem(product);
    notifyListeners();
  }

  // Remove item by ID
  Future<void> remove(String id) async {
    _items.removeWhere((item) => item.id == id);
    await _dbHelper.deleteItem(id);
    notifyListeners();
  }

  // Clear entire cart
  Future<void> clear() async {
    _items.clear();
    await _dbHelper.clearCart();
    notifyListeners();
  }
}
