import 'package:get/get.dart';

class PaymentController extends GetxController {
  //TODO: Implement PaymentController


  var name;
  var from;
  var destination;
  var date;
  var fare;
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
