import 'package:bus_app/app/modules/common/common.dart';
import 'package:bus_app/app/modules/passenger/controllers/payment_controller.dart';
import 'package:bus_app/app/modules/passenger/views/landing_view.dart';
import 'package:bus_app/app/modules/passenger/views/reservation_details_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PaymentView extends GetView <PaymentController>{
PaymentController controller = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          child: Container(
            color: myBlue,
            height: height / 6,
            width: width / 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Get.off(LandingView());
                      }),
                  Text(
                    'Payment Details',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(50),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: height / 3.5,
                width: width / 1.2,
                child: Card(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Payment Options',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              child:
                                  Icon(Icons.credit_card, color: Colors.black),
                            ),
                            trailing: Text(
                              'Cash',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              child: Icon(
                                Icons.money_rounded,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Text(
                              'Credit Card',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(),
                        ],
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'TRAVEL SUMMARY',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(left: width / 10, right: width / 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Text('Name: '),
                    Text('From: '),
                    Text('destination: '),
                    Text('Date/Time: '),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Bill',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              '₦',
                              style: TextStyle(
                                  color: myBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(85, 0, 85, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: myPink,
                elevation: 3,
              ),
              onPressed: () {
                Get.defaultDialog(
                    title: 'Payment Confirmation',
                    content: Text('You are about to make payment'),
                    onCancel: () {},
                    textConfirm: 'Go ahead',
                    onConfirm: () {
                      Get.offAll(ReservationDetailsView());
                    });
              },
              child: Text(
                'Pay Now',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.off(LandingView());
              },
              child: Text('Go Back', style: TextStyle(fontSize: 18)),
            )
          ],
        ));
  }
}
