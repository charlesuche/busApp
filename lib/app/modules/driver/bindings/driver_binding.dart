import 'package:get/get.dart';

import 'package:bus_app/app/modules/driver/controllers/scan_page_controller.dart';

import '../controllers/driver_controller.dart';

class DriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanPageController>(
      () => ScanPageController(),
    );
    Get.lazyPut<DriverController>(
      () => DriverController(),
    );
  }
}
