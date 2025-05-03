// RoomModel
class RoomModel {
  String roomId;
  String type;
  bool isAvailable;
  bool isBooked;
  bool isSelected;

  RoomModel({
    required this.roomId,
    required this.type,
    required this.isAvailable,
    required this.isBooked,
    this.isSelected = false,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) {
    return RoomModel(
      roomId: json['roomId'],
      type: json['type'],
      isAvailable: json['isAvailable'],
      isBooked: json['isBooked'],
    );
  }
}

// HostelModel
class HostelModel {
  String hostelId;
  String hostelName;
  List<RoomModel> rooms;

  HostelModel({
    required this.hostelId,
    required this.hostelName,
    required this.rooms,
  });

  factory HostelModel.fromJson(Map<String, dynamic> json) {
    return HostelModel(
      hostelId: json['hostelId'],
      hostelName: json['hostelName'],
      rooms: (json['rooms'] as List)
          .map((e) => RoomModel.fromJson(e))
          .toList(),
    );
  }
}
