import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<bool> slots = List.filled(
      5, false); // Fixed-length list with 5 slots, all initially unbooked

  void toggleBooking(int index) {
    setState(() {
      slots[index] = !slots[
          index]; // Toggle booking status (true = booked, false = available)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Room Booking")),
      body: ListView.builder(
        itemCount: slots.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Room ${index + 1}"),
            subtitle: Text(slots[index] ? "Booked" : "Available"),
            trailing: ElevatedButton(
              onPressed: () => toggleBooking(index),
              child: Text(slots[index] ? "Cancel" : "Book"),
            ),
          );
        },
      ),
    );
  }
}
