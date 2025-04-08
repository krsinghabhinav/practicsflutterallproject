// import 'package:flutter/material.dart';

// class ProductScreen extends StatefulWidget {
//   @override
//   _ProductScreenState createState() => _ProductScreenState();
// }

// class _ProductScreenState extends State<ProductScreen> {
//   List<String> products = [
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//     "Shoes", "Watch", "Bag", "Laptop", "Headphones", "Phone", "Tablet", "Camera",
//   ];

//   List<String> displayedProducts = []; // Stores sublist of products
//   int startIndex = 0;
//   int itemsPerPage = 20; // Number of items per page

//   void showNextProducts() {
//     setState(() {
//       int endIndex = (startIndex + itemsPerPage > products.length)
//           ? products.length
//           : startIndex + itemsPerPage;
//       displayedProducts = products.sublist(startIndex, endIndex);
//       startIndex = endIndex; // Move to next batch
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     showNextProducts(); // Show initial set of products
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Product List")),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: displayedProducts.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(displayedProducts[index]),
//                 );
//               },
//             ),
//           ),
//           ElevatedButton(
//             onPressed: (startIndex < products.length) ? showNextProducts : null,
//             child: Text("Load More"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> products = [
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
    "Shoes",
    "Watch",
    "Bag",
    "Laptop",
    "Headphones",
    "Phone",
    "Tablet",
    "Camera",
  ];

  List<String> displayedProducts = []; // Stores loaded products
  int startIndex = 0;
  int itemsPerPage = 15; // Number of items per page
  bool isLoading = false; // Prevents duplicate API calls
  late ScrollController
      _scrollController; // Scroll controller for detecting scroll position

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    showNextProducts(); // Load initial items
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      showNextProducts(); // Load more items when reaching the bottom
    }
  }

  void showNextProducts() {
    if (isLoading || startIndex >= products.length) return;

    setState(() {
      isLoading = true; // Start loading
      int endIndex = (startIndex + itemsPerPage > products.length)
          ? products.length
          : startIndex + itemsPerPage;
      displayedProducts.addAll(products.sublist(startIndex, endIndex));
      startIndex = endIndex;
    });

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isLoading = false; // Stop loading
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController, // Attach scroll controller
              itemCount: displayedProducts.length +
                  1, // Extra item for loading indicator
              itemBuilder: (context, index) {
                if (index == displayedProducts.length) {
                  return isLoading
                      ? Padding(
                          padding: EdgeInsets.all(10),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : SizedBox.shrink();
                }
                return ListTile(title: Text(displayedProducts[index]));
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose controller to prevent memory leaks
    super.dispose();
  }
}
