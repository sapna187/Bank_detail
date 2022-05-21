import 'package:demo2/constants.dart';
import 'package:demo2/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'edit_info.dart';
import 'main.dart';

class Saved extends StatelessWidget {
  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeea),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.to(Edit());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFfffeea),
        title: BoldText(" Updated Bank Details",20,background),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/images/81.png"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          BoldText("Sapna", 20, Colors.black),
                          SizedBox(
                            height: 9,
                          ),
                          PlainText("roman95181@gmail.com", 15, Colors.black87)

                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child:    PlainText("profile", 15, Colors.black87),
                  // ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: Colors.deepPurpleAccent,
                    thickness: 3.5,
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
                          // offset: Offset(
                          //     2.0, 2.0), // shadow direction: bottom right
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 7, 18, 7),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: BoldText("information about bank", 20, Colors.black),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            child: Container(
                              // width: 450,
                              child: Column(
                                children: [
                                  //Data From Here
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      PlainText("Bank Name ", 17, grey),
                                      Text(
                                        "${userdata.read('bankname')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      PlainText("FCFS Code", 17, grey),
                                      Text(
                                        "${userdata.read('fcfsnum')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      PlainText("Account Number", 17, grey),
                                      Text(
                                        "${userdata.read('accountno')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),


                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      PlainText("Branch", 17, grey),
                                      Text(
                                        "${userdata.read('branch')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),


                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => Homepage());
                                    },
                                    child:BoldText("Add New Data", 20, blue),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}