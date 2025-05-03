// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practicsflutterallproject/getxpractic/controller/HostelController.dart';

// class Hostelfilterscreen extends StatefulWidget {
//   const Hostelfilterscreen({super.key});

//   @override
//   State<Hostelfilterscreen> createState() => _HostelfilterscreenState();
// }

// class _HostelfilterscreenState extends State<Hostelfilterscreen> {
//   // final Hostelcontroller hostelcontroller = Get.put(Hostelcontroller());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hostel Data"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Obx(() => ListView.builder(
//                   itemCount: hostelcontroller.cityList.length,
//                   itemBuilder: (context, index) {
//                     final citydata = hostelcontroller.cityList[index];
//                     final isSelected =
//                         citydata.id == hostelcontroller.selectedCityId.value;

//                     return GestureDetector(
//                       onTap: () {
//                         hostelcontroller.selectedCityId.value = citydata.id;
//                       },
//                       child: GestureDetector(
//                         onTap: () {
//                           hostelcontroller.selectCity(citydata.id);

//                           print("=====${citydata.id}");
//                         },
//                         child: Container(
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.all(15),
//                           decoration: BoxDecoration(
//                             color: isSelected
//                                 ? Colors.green[100]
//                                 : Colors.red[100],
//                             borderRadius: BorderRadius.circular(15),
//                             border: Border.all(
//                               color: isSelected ? Colors.green : Colors.red,
//                               width: 2,
//                             ),
//                           ),
//                           child: Text(
//                             citydata.placeName,
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: isSelected
//                                   ? const Color.fromARGB(255, 202, 183, 12)
//                                   : Colors.red,
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 )),
//           ),

//           SizedBox(height: 20),

//           // 🕑 Loading Indicator
//           Obx(() => hostelcontroller.isLoading.value
//               ? Center(child: CircularProgressIndicator())
//               : Expanded(
//                   child: ListView.builder(
//                     itemCount: hostelcontroller.hostelList.length,
//                     itemBuilder: (context, index) {
//                       final hostel = hostelcontroller.hostelList[index];
//                       return ListTile(
//                         title: Text(hostel.name),
//                         subtitle: Text("City ID: ${hostel.cityId}"),
//                         tileColor: Colors.grey[100],
//                       );
//                     },
//                   ),
//                 )),
//         ],
//       ),
//     );
//   }
// }
