import 'package:bus_app/app/modules/common/common.dart';
import 'package:bus_app/app/modules/passenger/controllers/reservation_details_controller.dart';
import 'package:bus_app/app/modules/passenger/views/landing_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReservationDetailsView extends GetView<ReservationDetailsController> {
  ReservationDetailsController controller = Get.put(ReservationDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlue,
        title: Text('Reservation Details'),
        centerTitle: true,
      ),
      body: Column(
        
        children: [
          SizedBox(height: 10),
         
          Text('${controller.date}',
            style: TextStyle(fontSize: 15, 
            color: Colors.grey,
            
            ),
          ),
          Container(
          
          
            child: Column(
              
              children: [

                ListTile(
                  leading: Text('Name: ', 
                  style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text('Id: ',
                   style: TextStyle(fontSize: 15),
                  ),
                ),
                Divider(),
                  ListTile(
                  leading: Text('From: ',
                   style: TextStyle(fontSize: 15),
                  ),
                  trailing: Text('To: ',
                   style: TextStyle(fontSize: 15),
                  ),
                ),
         
                ListTile(
                  trailing: Text(' Fare: ',
                   style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
           ),
         ),
         SizedBox(height: 10),
         Divider(),
           ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
                primary: myPink, //background color of button
                elevation: 3, //elevation of button
              ),
              onPressed: () {
                Get.off(LandingView());
              },
              child: Text('Go Home')
              ),
               SizedBox(height: 50),  
          Center(
            child: Text('QR CODE STUFF HERE'),
          ),
          SizedBox(height: 300),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    primary: myPink, 
                    elevation: 3, 
                  ),
                  onPressed: () {
                  },
                  child: Text('CANCEL')),
              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    primary: myPink, 
                    elevation: 3, 
              ),
              onPressed: () {
              },
              child: Text('DOWNLOAD')
              ),
            ],
          )
        ],
      ),
    );
  }
}
