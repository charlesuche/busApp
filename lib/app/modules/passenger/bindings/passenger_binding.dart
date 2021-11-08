import 'package:get/get.dart';

import 'package:bus_app/app/modules/passenger/controllers/landing_controller.dart';
import 'package:bus_app/app/modules/passenger/controllers/payment_controller.dart';
import 'package:bus_app/app/modules/passenger/controllers/reservation_details_controller.dart';

import '../controllers/passenger_controller.dart';

class PassengerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(
      () => LandingController(),
    );
    Get.lazyPut<ReservationDetailsController>(
      () => ReservationDetailsController(),
    );
    Get.lazyPut<PaymentController>(
      () => PaymentController(),
    );
    Get.lazyPut<PassengerController>(
      () => PassengerController(),
    );
  }
}
