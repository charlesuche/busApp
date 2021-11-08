import 'package:get/get.dart';

class ReservationDetailsController extends GetxController {
  //TODO: Implement ReservationDetailsController

  var name;
  var from;
  var destination;
  var fare;
  var date = DateTime.now().toLocal();

  
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
