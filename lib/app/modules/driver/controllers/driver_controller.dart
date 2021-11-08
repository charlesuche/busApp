import 'package:get/get.dart';

class DriverController extends GetxController {
  //TODO: Implement DriverController
RxBool on = false.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;
  List<String> Hostel = [
    'Hostel Bus',
    'This trip is assigned to go to the hostel. You can activate it by toggling the button by the right. Tap scan to very QR code.'
  ];
  List<String> Angwa = [
    'Angwa',
    'This trip is scheduled for  12pm-2pm. You can activate it by toggling the button by the right. Tap scan to very QR code.'
  ];
  List<String> Village = [
    'Village',
    'This trip is scheduled for  2pm-4pm. You can activate it by toggling the button by the right. Tap scan to very QR code.'
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

  bool no = true;
  List<bool> states = [true, false];
  bool isSelected = false;

  @override
  void onClose() {}
  void increment() => count.value++;
}
