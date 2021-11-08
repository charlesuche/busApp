import 'package:get/get.dart';

class LandingController extends GetxController {
  //TODO: Implement LandingController
List<String> Campus = [
  'Campus',
  '30'
];

List<String> Angawa= [
  'Angwa',
  '30-50'
];

List<String> Hostel = [
  'Hostel',
  '30'
];

List<String> destinations =[
  'Hostel',
  'Angwa',
  'Farin-gada'
];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
