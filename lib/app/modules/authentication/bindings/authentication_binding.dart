import 'package:get/get.dart';

import 'package:bus_app/app/modules/authentication/controllers/driver_reg_controller.dart';
import 'package:bus_app/app/modules/authentication/controllers/login_controller.dart';
import 'package:bus_app/app/modules/authentication/controllers/passenger_reg_controller.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PassengerRegController>(
      () => PassengerRegController(),
    );
    Get.lazyPut<DriverRegController>(
      () => DriverRegController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );

    Get.lazyPut<AuthenticationController>(
      () => AuthenticationController(),
    );
  }
}
