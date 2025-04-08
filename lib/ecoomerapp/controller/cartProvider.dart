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


class CartProvider with ChangeNotifier {
  List<ProductModel> cartItems = [];
  CartDBHelper _dbHelper = CartDBHelper();
  List<ProductModel> productList = dummyProductList;

  CartProvider() {
    loadCartFromDB();
  }

  List<ProductModel> get items => cartItems;

  double get totalPrice =>
      cartItems.fold(0.0, (sum, item) => sum + (item.price ?? 0));

  Future<void> loadCartFromDB() async {
    cartItems = await _dbHelper.fetchItems();
    notifyListeners();
  }

  void addProduct(ProductModel product) async {
    if (!cartItems.any((item) => item.id == product.id)) {
      cartItems.add(product);
      await _dbHelper.insertItem(product);
      notifyListeners();
    }
  }

  void removeCartItem(String id) async {
    cartItems.removeWhere((item) => item.id == id);
    await _dbHelper.deleteItem(id);
    notifyListeners();
  }

  void clearCart() async {
    cartItems.clear();
    await _dbHelper.clearCart();
    notifyListeners();
  }
}
