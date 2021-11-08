import 'package:bus_app/app/modules/authentication/views/authentication_view.dart';
import 'package:bus_app/app/modules/common/common.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {

final pageList = [
  PageModel(color: myPink, heroImagePath: 'assets/schoolbus.png',
   title: Text('Quality Buses',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
          body: Text('All buses are stationed to your desired locations',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
       icon: Icon(Icons.car_rental),
      
        ),
      PageModel(color: myBlue, heroImagePath: 'assets/TaxiDriver_Outline.svg',
   title: Text('Reliable Drivers',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: myPink,
              fontSize: 34.0,
            )),
          body: Text('Our drivers are always Prompt. You\'ll get to your destination in no time! ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
      icon: Icon(Icons.verified_outlined)
        ),

        PageModel(color: Colors.white, heroImagePath: 'assets/payment.svg',
   title: Text('Payment',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: myBlue,
              fontSize: 34.0,
            )),
          body: Text('Pay for your ride via your phone. No need for manual ticket!',
            textAlign: TextAlign.center,
            style: TextStyle(
        
              fontSize: 18.0,
            )),
       icon: Icon(Icons.money)
       ),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: FancyOnBoarding(
        doneButtonText: "Done",
        doneButtonBackgroundColor: myPink,
        doneButtonTextStyle: TextStyle(
          color: Colors.white
        ),
        skipButtonText: "Skip",
       skipButtonColor: Colors.black,
       
        pageList: pageList,
        onDoneButtonPressed: () =>
           Get.off(AuthenticationView()),
        onSkipButtonPressed: () =>
       Get.off(AuthenticationView()),
      
      ),
    );
  }
}
