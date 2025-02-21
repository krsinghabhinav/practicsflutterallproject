import 'package:flutter/material.dart';

class Autocompletewidget extends StatefulWidget {
  const Autocompletewidget({super.key});

  @override
  State<Autocompletewidget> createState() => _AutocompletewidgetState();
}

class _AutocompletewidgetState extends State<Autocompletewidget> {
  List<String> listItem = [
    "Banana",
    "Apple",
    "Car",
    "Melon",
    "Abhinav",
    "Abhi",
    "Aksingh"
  ];

  // This will hold the selected items
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocomplete Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable.empty();
                }
                return listItem.where((item) {
                  return item
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                }).toList();
              },
              onSelected: (selectedItem) {
                setState(() {
                  // Add the selected item to the selectedItems list
                  selectedItems.add(selectedItem);
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Selected Items:',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 10),
            // Display selected items in a ListView
            Expanded(
              child: ListView.builder(
                itemCount: selectedItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(selectedItems[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          // Remove item from the selected items list
                          selectedItems.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
