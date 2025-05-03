import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/getxController.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Obx(() {
        if (cartController.items.isEmpty) {
          return const Center(child: Text('Your cart is empty.'));
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartController.items.length,
                  itemBuilder: (context, index) {
                    final item = cartController.items[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: ListTile(
                        leading: Image.network(
                          item.image ?? '',
                          width: 50,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.image),
                        ),
                        title: Text(item.name ?? 'Unknown Item'),
                        subtitle: Text(
                            '₹${item.price?.toStringAsFixed(2) ?? '0.00'}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            cartController.removeItem(item.id!);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(
                          'Total: ₹${cartController.totalPrice.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ElevatedButton(
                      onPressed: () {
                        cartController.clearCart();
                        Get.snackbar(
                          "Order Placed",
                          "Your order has been successfully placed!",
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 2),
                        );
                      },
                      child: const Text('Place Order'),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
