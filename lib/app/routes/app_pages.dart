import 'package:get/get.dart';

import 'package:bus_app/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:bus_app/app/modules/authentication/views/authentication_view.dart';
import 'package:bus_app/app/modules/driver/bindings/driver_binding.dart';
import 'package:bus_app/app/modules/driver/views/driver_view.dart';
import 'package:bus_app/app/modules/home/bindings/home_binding.dart';
import 'package:bus_app/app/modules/home/views/home_view.dart';
import 'package:bus_app/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:bus_app/app/modules/onboarding/views/onboarding_view.dart';
import 'package:bus_app/app/modules/passenger/bindings/passenger_binding.dart';
import 'package:bus_app/app/modules/passenger/views/passenger_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.DRIVER,
      page: () => DriverView(),
      binding: DriverBinding(),
    ),
    GetPage(
      name: _Paths.PASSENGER,
      page: () => PassengerView(),
      binding: PassengerBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
  ];
}
