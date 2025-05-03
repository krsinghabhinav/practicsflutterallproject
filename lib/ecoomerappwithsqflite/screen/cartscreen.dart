import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/cartProvider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: cartProvider.items.isEmpty
          ? const Center(child: Text('Your cart is empty.'))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProvider.items.length,
                    itemBuilder: (context, index) {
                      final item = cartProvider.items[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: ListTile(
                          leading: Image.network(
                            item.image ?? '',
                            width: 50,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          title: Text(item.name ?? 'Unknown Item'),
                          subtitle: Text(
                              '₹${item.price?.toStringAsFixed(2) ?? '0.00'}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              cartProvider.remove(item.id!);
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
                      Text(
                        'Total: ₹${cartProvider.totalPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement order placing logic
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Order Placed!'),
                                duration: Duration(seconds: 2)),
                          );
                        },
                        child: const Text('Place Order'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
