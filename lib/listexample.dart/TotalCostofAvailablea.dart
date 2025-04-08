import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  final List<double> productPrices = [299.99, 499.50, 150.00, 899.99, 1200.00];
  final List<bool> productAvailability = [true, false, true, true, false];

  double calculateTotalCost() {
    double totalCost = 0.0;
    for (int i = 0; i < productPrices.length; i++) {
      if (productAvailability[i]) {
        totalCost += productPrices[i];
      }
    }
    return totalCost;
  }

  @override
  Widget build(BuildContext context) {
    double totalCost = calculateTotalCost();

    return Scaffold(
      appBar: AppBar(title: Text("E-commerce Checkout")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total Cost: ₹${totalCost.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  totalCost > 0 ? () => print("Proceed to Checkout") : null,
              child: Text("Proceed to Checkout"),
            ),
          ],
        ),
      ),
    );
  }
}
