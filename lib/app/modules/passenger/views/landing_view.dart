import 'dart:math';

import 'package:bus_app/app/modules/common/common.dart';
import 'package:bus_app/app/modules/passenger/controllers/landing_controller.dart';
import 'package:bus_app/app/modules/passenger/views/emergency_view.dart';
import 'package:bus_app/app/modules/passenger/views/payment_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//THIS IS THE VIEW OF THE LANDING VIEW OF THE PASSENGER
class LandingView extends GetView<LandingController> {
 
  @override
  Widget build(BuildContext context) {
LandingController mycontroller = Get.put(LandingController());

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: myBlue,
          height: height / 6,
          width: width / 3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MyBus',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Available Ride',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(200),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          
          Center(
              child: myCard(Icons.directions_bus, 'From', 'To', '${Get.find<LandingController>().Campus[0]}',
                  '${Get.find<LandingController>().destinations[0]}', '\₦30', PaymentView())),
          Center(
              child: myCard(Icons.directions_bus, 'From', 'To', '${Get.find<LandingController>().Campus[0]}',
                  '${Get.find<LandingController>().destinations[1]}', '\₦30-₦50', PaymentView())),
          Center(
              child: myCard(Icons.directions_bus, 'From', 'To', '${Get.find<LandingController>().Campus[0]}',
                  '${Get.find<LandingController>().destinations[2]}', '₦50', PaymentView())),
          SizedBox(height: 10,),
          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                          primary: myBlue, //background color of button
                          elevation: 3, //elevation of button
                        ),
                        onPressed: () {
                        Get.to(()=>EmergencyView());
                        },
                        child: Text('EMERGENCY RIDE'))
          // FloatingActionButton(onPressed: (){
          //   final firestoreInstance = FirebaseFirestore.instance;
          //   firestoreInstance.collection('users').add({
          //     "name": "Khostik",
          //       "age": 50,
          //       "email": "example@example.com",
          //       "address": {"street": "street 24", "city": "new york"
          //   }}).then((value) => Get.snackbar('${value.id}', 'Id of the latest user'));
            
          // },
          // backgroundColor: Colors.red,
          // child: Icon(Icons.add),
          // )
                 
        ],
      ),
    );
  }
}


class myCard extends StatelessWidget {
  myCard(this.icon, this.from, this.to, this.location, this.destination,
      this.fare, this.page);
  Widget page;
  String from;
  String to;
  String fare;
  String location;
  String destination;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 350,
        child: Card(
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(icon),
                        Text('$from: '),
                        Text(
                          '$location',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('$fare',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        )
                      ],
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(icon),
                        Text('$to:  '),
                        Text('$destination ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                          primary: myPink, //background color of button
                          elevation: 3, //elevation of button
                        ),
                        onPressed: () {
                          Get.off(page, 
                           
                          );
                        
                        },
                        child: Text('Book'))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
