import 'package:bus_app/app/data/usermanagement_provider.dart';
import 'package:bus_app/app/modules/common/common.dart';
import 'package:bus_app/app/modules/home/views/home_view.dart';
import 'package:bus_app/app/modules/passenger/views/landing_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PassengerRegView extends GetView {
  TextEditingController full_nameCont = TextEditingController().obs.value;
  TextEditingController emailCont = TextEditingController().obs.value;
  TextEditingController passwordCont = TextEditingController().obs.value;
var val;
show(){
  print(full_nameCont.text);
}
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: myPink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text('Passenger Reg', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
               SizedBox(height: 15,),
             Text('Please enter your details below', style: TextStyle(  color: Colors.grey[200]),),
            SizedBox(height: 20,),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: Material(
                elevation: 15,
                child: Container(
                  color: Colors.white,
                  height: height / 3,
                  width: width / 1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Username',
                                focusedBorder:
                                    OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                              controller: full_nameCont,
                              onChanged: (val) {
                                val = full_nameCont.text;
                              },
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'email',
                                focusedBorder:
                                    OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                              controller: emailCont,
                              onChanged: (val) {
                                val = emailCont.text;
                              },
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                focusedBorder:
                                    OutlineInputBorder(borderSide: BorderSide.none),
                                // enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                              controller: passwordCont,
                              onChanged: (val) {
                                val = passwordCont.text;
                              },
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(85, 0, 85, 0),
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30)),
                                primary: myBlue, //background color of button
                                elevation: 3, //elevation of button
                              ),
                              onPressed: () async {
                                Get.off(() => LandingView(),
                                    arguments: {'id': '${full_nameCont.text}'},
                                    transition: Transition.topLevel,
                                    duration: Duration(seconds: 2));
                              },
                              child: Text(
                                'REGISTER',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                                    ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }  
}

