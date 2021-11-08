import 'package:bus_app/app/modules/common/common.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EmergencyView extends GetView {
  bool ischecked = false;
 
  void onChanged(bool value){

      ischecked =value;
  }
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  PreferredSize(
        child: Container(
          color: myBlue,
          height: height / 6,
          width: width / 3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'EMERGENCY',
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
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Column(
              children: [
                Text('Reason for emergency', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), ),
                Divider(),
               ListTile(
                 leading: Icon(Icons.local_hospital),
                 title: Text('Clinic'),
               ),
               Divider(),
                ListTile(
                 leading: Icon(Icons.book),
                 title: Text('Exams'),
                 trailing: Checkbox(value: ischecked, onChanged:(val){onChanged(val!);}),
               ),
          
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
                        // Get.to(()=>EmergencyView());
                        },
                        child: Text('Proceed'))
              ],
            ),
          )

        ],
      )
    );
  }
}
