import 'dart:convert';

import 'package:get/get.dart';
import 'package:practicsflutterallproject/getxpractic/model/RoomModel.dart';

class Jsonhotelcontroller extends GetxController {
  RxList<HostelModel> hostelList = <HostelModel>[].obs;
  Rx<RoomModel?> selectedRoom = Rx<RoomModel?>(null);
  void fetchData() {
    final jsonData = [
      {
        "hostelId": "H1",
        "hostelName": "Sunrise PG",
        "rooms": [
          {
            "roomId": "R1",
            "type": "AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R2",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": true
          },
          {
            "roomId": "R3",
            "type": "AC",
            "isAvailable": false,
            "isBooked": false
          }
        ]
      },
      {
        "hostelId": "H2",
        "hostelName": "Moonlight Hostel",
        "rooms": [
          {
            "roomId": "R4",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R5",
            "type": "AC",
            "isAvailable": false,
            "isBooked": false
          },
          {"roomId": "R6", "type": "AC", "isAvailable": true, "isBooked": true}
        ]
      },
      {
        "hostelId": "H3",
        "hostelName": "City View Residency",
        "rooms": [
          {
            "roomId": "R7",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": true
          },
          {
            "roomId": "R8",
            "type": "AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R9",
            "type": "Non-AC",
            "isAvailable": false,
            "isBooked": false
          }
        ]
      },
      {
        "hostelId": "H4",
        "hostelName": "Green Leaf PG",
        "rooms": [
          {
            "roomId": "R10",
            "type": "AC",
            "isAvailable": false,
            "isBooked": false
          },
          {
            "roomId": "R11",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": false
          },
          {"roomId": "R12", "type": "AC", "isAvailable": true, "isBooked": true}
        ]
      },
      {
        "hostelId": "H5",
        "hostelName": "Lakeside Stay",
        "rooms": [
          {
            "roomId": "R13",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R14",
            "type": "AC",
            "isAvailable": false,
            "isBooked": false
          },
          {
            "roomId": "R15",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": true
          }
        ]
      },
      {
        "hostelId": "H6",
        "hostelName": "Elite Hostel",
        "rooms": [
          {
            "roomId": "R16",
            "type": "AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R17",
            "type": "Non-AC",
            "isAvailable": false,
            "isBooked": false
          },
          {"roomId": "R18", "type": "AC", "isAvailable": true, "isBooked": true}
        ]
      },
      {
        "hostelId": "H7",
        "hostelName": "Harmony Stay",
        "rooms": [
          {
            "roomId": "R19",
            "type": "AC",
            "isAvailable": false,
            "isBooked": false
          },
          {
            "roomId": "R20",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": true
          },
          {
            "roomId": "R21",
            "type": "AC",
            "isAvailable": true,
            "isBooked": false
          }
        ]
      },
      {
        "hostelId": "H8",
        "hostelName": "Peaceful Nest",
        "rooms": [
          {
            "roomId": "R22",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R23",
            "type": "AC",
            "isAvailable": false,
            "isBooked": false
          },
          {
            "roomId": "R24",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": true
          }
        ]
      },
      {
        "hostelId": "H9",
        "hostelName": "Campus Lodge",
        "rooms": [
          {
            "roomId": "R25",
            "type": "AC",
            "isAvailable": true,
            "isBooked": true
          },
          {
            "roomId": "R26",
            "type": "Non-AC",
            "isAvailable": false,
            "isBooked": false
          },
          {
            "roomId": "R27",
            "type": "AC",
            "isAvailable": true,
            "isBooked": false
          }
        ]
      },
      {
        "hostelId": "H10",
        "hostelName": "Skyline PG",
        "rooms": [
          {
            "roomId": "R28",
            "type": "Non-AC",
            "isAvailable": false,
            "isBooked": false
          },
          {
            "roomId": "R29",
            "type": "AC",
            "isAvailable": true,
            "isBooked": false
          },
          {
            "roomId": "R30",
            "type": "Non-AC",
            "isAvailable": true,
            "isBooked": true
          }
        ]
      }
    ];
    for (int i = 0; i < jsonData.length; i++) {
      var hostelData = jsonData[i];
      hostelList.add(HostelModel.fromJson(hostelData));
    }
  }

  void slectedRoomfun(String hostelId, String roomId) {
    for (var hostel in hostelList) {
      if (hostel.hostelId == hostelId) {
        for (var room in hostel.rooms) {
          if (room.isBooked || !room.isAvailable) {
            room.isSelected == false;
            selectedRoom.value = null;
            Get.snackbar("Not Allowed", "this is the room is not available ");
          } else {
            for (var r in hostel.rooms) {
              r.isSelected = false;
            }
            room.isSelected = true;
            selectedRoom.value = room;
          }
        }
      }
    }
    hostelList.refresh(); // update UI
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }
}
