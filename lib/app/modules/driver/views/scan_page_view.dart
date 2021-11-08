import 'package:barcode_widget/barcode_widget.dart';
import 'package:bus_app/app/modules/common/common.dart';
import 'package:bus_app/app/modules/driver/controllers/scan_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScanPageView extends GetView<ScanPageController> {
  ScanPageController controller = Get.put(ScanPageController());

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: myBlue,
      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Center(child: Text('Scan', style: TextStyle(color: Colors.white,
            fontSize: 20
            ),)),
          ),

        ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                    primary:myPink, //background color of button
                    elevation: 3, //elevation of button
                    ),
                    onPressed: () {

                   Get.defaultDialog(
                     title: 'Scan Status',
                     content: Container(
                       height: 400,
                       width: 400,
                     )
                   );
                   
               
                  
                },
                    child: Text(
                      'Scan QR Code',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
           
        ],
      )
    );
  }
}
