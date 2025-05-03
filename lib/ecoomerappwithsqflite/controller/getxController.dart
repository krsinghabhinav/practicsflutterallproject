import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../db/db.dart';
import '../model/productmodel.dart';

import '../model/productmodeldummydata.dart'; // Make sure this is imported

class CartController extends GetxController {
  final CartDBHelper _dbHelper = CartDBHelper();

  // Observables
  var items = <ProductModel>[].obs;
  List<ProductModel> productList = dummyProductList;

  @override
  void onInit() {
    super.onInit();
    _loadCart();
  }

  // Computed property for total price
  double get totalPrice =>
      items.fold(0.0, (sum, item) => sum + (item.price ?? 0));

  // Load cart from local DB
  Future<void> _loadCart() async {
    final fetchedItems = await _dbHelper.fetchItems();
    items.assignAll(fetchedItems);
  }

  // Add item to cart (even if it's already there)
  Future<void> addItem(ProductModel product) async {
    items.add(product);
    await _dbHelper.insertItem(product);
  }

  // Remove item by ID
  Future<void> removeItem(String id) async {
    items.removeWhere((item) => item.id == id);
    await _dbHelper.deleteItem(id);
  }

  // Clear entire cart
  Future<void> clearCart() async {
    items.clear();
    await _dbHelper.clearCart();
  }
}
