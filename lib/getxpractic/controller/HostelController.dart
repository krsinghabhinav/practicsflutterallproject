// import 'package:get/get.dart';
// import 'package:practicsflutterallproject/getxpractic/model/CityModel.dart';
// import 'package:practicsflutterallproject/getxpractic/model/HostelModel.dart';

// class Hostelcontroller extends GetxController {
//   var cityList = <CityModel>[].obs;
//   var selectedCityId = "".obs;
//   var hostelList = <HostelModel>[].obs;
//   var isLoading = false.obs;

//   void fetchCityData() {
//     isLoading.value = true;

//     var citydata = [
//       CityModel(id: '1', placeName: 'Delhi'),
//       CityModel(id: '2', placeName: 'Mumbai'),
//       CityModel(id: '3', placeName: 'Lucknow'),
//       CityModel(id: '4', placeName: 'Bangalore'),
//       CityModel(id: '5', placeName: 'Chennai'),
//       CityModel(id: '6', placeName: 'Kolkata'),
//       CityModel(id: '7', placeName: 'Hyderabad'),
//       CityModel(id: '8', placeName: 'Pune'),
//       CityModel(id: '9', placeName: 'Ahmedabad'),
//       CityModel(id: '10', placeName: 'Jaipur'),
//       CityModel(id: '11', placeName: 'Surat'),
//       CityModel(id: '12', placeName: 'Kanpur'),
//       CityModel(id: '13', placeName: 'Nagpur'),
//       CityModel(id: '14', placeName: 'Indore'),
//       CityModel(id: '15', placeName: 'Bhopal'),
//       CityModel(id: '16', placeName: 'Patna'),
//       CityModel(id: '17', placeName: 'Ludhiana'),
//       CityModel(id: '18', placeName: 'Agra'),
//       CityModel(id: '19', placeName: 'Varanasi'),
//       CityModel(id: '20', placeName: 'Amritsar'),
//     ];

//     cityList.value = citydata;
//     selectedCityId.value = cityList.first.id;
//     fetchHostelByCity(cityList.first.id);
//     isLoading.value = false;
//   }

//   void selectCity(String cityId) {
//     selectedCityId.value = cityId;
//     fetchHostelByCity(cityId);
//   }

//   void fetchHostelByCity(String cityId) {
//     isLoading.value = true;
//     hostelList.clear(); // Important: Clear previous data before adding new one

//     List<HostelModel> allHostels = [
//       HostelModel(name: 'Hostel A', cityId: '1'),
//       HostelModel(name: 'Hostel B', cityId: '1'),
//       HostelModel(name: 'Hostel C', cityId: '2'),
//       HostelModel(name: 'Hostel D', cityId: '3'),
//       HostelModel(name: 'Hostel E', cityId: '4'),
//       HostelModel(name: 'Hostel F', cityId: '5'),
//       HostelModel(name: 'Hostel G', cityId: '6'),
//       HostelModel(name: 'Hostel H', cityId: '7'),
//       HostelModel(name: 'Hostel I', cityId: '8'),
//       HostelModel(name: 'Hostel J', cityId: '9'),
//       HostelModel(name: 'Hostel K', cityId: '10'),
//       HostelModel(name: 'Hostel L', cityId: '11'),
//       HostelModel(name: 'Hostel M', cityId: '12'),
//       HostelModel(name: 'Hostel N', cityId: '13'),
//       HostelModel(name: 'Hostel O', cityId: '14'),
//       HostelModel(name: 'Hostel P', cityId: '15'),
//       HostelModel(name: 'Hostel Q', cityId: '16'),
//       HostelModel(name: 'Hostel R', cityId: '17'),
//       HostelModel(name: 'Hostel S', cityId: '18'),
//       HostelModel(name: 'Hostel T', cityId: '19'),
//     ];

//     // hostelList.value =
//     //     allHostels.where((hostel) => hostel.cityId == cityId).toList();
//     for (var hostel in allHostels) {
//       if (hostel.cityId == cityId) {
//         hostelList.add(hostel);
//       }
//     }

//     isLoading.value = false;
//   }

//   @override
//   void onInit() {
//     super.onInit();
//     fetchCityData();
//   }
// }
