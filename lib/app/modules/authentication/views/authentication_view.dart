import 'package:bus_app/app/modules/authentication/views/driver_reg_view.dart';
import 'package:bus_app/app/modules/authentication/views/passenger_reg_view.dart';
import 'package:bus_app/app/modules/common/common.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Register as',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(85, 0, 85, 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),

              primary: Colors.white,
              elevation: 3, //elevation of button
            ),
            onPressed: () {
              Get.to(PassengerRegView(),
              transition: Transition.cupertinoDialog,
              duration: Duration(seconds: 1),
              // curve: Curves.bounceIn
              );
            },
            child: Text(
              'PASSENGER',
              style: TextStyle(color: myPink),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
              primary: myPink,
              elevation: 3, 
            ),
            onPressed: () {
              Get.to(() => DriverRegView(),
               transition: Transition.cupertino,
              duration: Duration(seconds: 1),
              );
            },
            child: Text('DRIVER'),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Already Have an Account?',
          ),
          TextButton(onPressed: () {}, child: Text('Login'))
        ],
      )),
    );
  }
}
