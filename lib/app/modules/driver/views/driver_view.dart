import 'package:bus_app/app/modules/common/common.dart';
import 'package:bus_app/app/modules/driver/views/scan_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/driver_controller.dart';

class DriverView extends GetView<DriverController> {
  DriverController controller = Get.put(DriverController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlue,

      body: Column(
        children: [
          SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 50, right: 20),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'Hi, Mac Nduka',
                        style: TextStyle(color: Colors.white, 
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                      ),
                    ],
                  ),
                 Icon(Icons.logout, color: Colors.white, size: 30,) 
                ],
              ),
            ),

            myCard(controller.Hostel[0], controller.Hostel[1], ScanPageView()),
            // myCard(controller.Afternoon[0], controller.Afternoon[1], ScanPageView()),
            // myCard(controller.Evening[0], controller.Evening[1], ScanPageView()),
          
          

          ],
        ));
  }
}







class myCard extends StatelessWidget {
  myCard(this.time, this.details, this.page);
  Widget page;
  String time;
  String details;
  
  RxBool on = false.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;

  @override
  Widget build(BuildContext context) {
   
    return Container(
        height: 180,
        width: 350,
        child: Card(
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Column(
          
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$time ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                    ),
                    Obx(() =>
                        Switch(  
                          activeTrackColor: myPink,
                          activeColor: Colors.white,
                          onChanged: (val) => toggle(), value: on.value),
                        
                        )

                  ],
                ),
                  
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('$details', textAlign: TextAlign.left,)),
                       Align(
                         alignment: Alignment.centerRight,
                         child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                      primary: myBlue, //background color of button
                      elevation: 3, //elevation of button
                    ),
                    onPressed: () {
                    Get.to(()=>ScanPageView(),
                     transition: Transition.topLevel,
                     duration: Duration(seconds: 2),
                    );
                    },
                    child: Text(
                      'scan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                       ),
                
              ],
            ),
          ),
        ));
  }
}
