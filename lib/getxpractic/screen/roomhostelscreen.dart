import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../controller/jsonHotelController.dart';

class Roomhostelscreen extends StatefulWidget {
  const Roomhostelscreen({super.key});

  @override
  State<Roomhostelscreen> createState() => _RoomhostelscreenState();
}

class _RoomhostelscreenState extends State<Roomhostelscreen> {
  Jsonhotelcontroller jsonhotelcontroller = Get.put(Jsonhotelcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Room Selected"),
      ),
      body: Column(
        children: [
          Obx(() {
            if (jsonhotelcontroller.hostelList.isEmpty) {
              return CircularProgressIndicator();
            } else {
              var hostel = jsonhotelcontroller.hostelList.first;
              return Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        hostel.hostelName,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: hostel.rooms.length,
                        itemBuilder: (context, index) {
                          final room = hostel.rooms[index];

                          Color bgColor;
                          if (room.isBooked || !room.isAvailable) {
                            bgColor = Colors.red;
                          } else if (room.isSelected) {
                            bgColor = Colors.green;
                          } else {
                            bgColor = Colors.grey.shade200;
                          }

                          return GestureDetector(
                            onTap: () => jsonhotelcontroller.slectedRoomfun(
                                hostel.hostelId, room.roomId),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                "${room.roomId} - ${room.type}",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
