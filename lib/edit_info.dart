import 'package:demo2/homePage.dart';
import 'package:demo2/saved2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants.dart';
import 'main.dart';

class Edit extends StatelessWidget {

  final bankname_controller = TextEditingController();
  final fcfsnum_controller = TextEditingController();
  final accountno_controller = TextEditingController();
  final branchBank_controller = TextEditingController();

  final userdata2 = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeea),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => Homepage());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xFFfffeea),
        centerTitle: true,
        title: BoldText("Bank Details", 20, Colors.black),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset("assets/images/81.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 30),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            BoldText("Sapna", 20, Colors.black),
                            SizedBox( height: 9,),
                            PlainText("roman95181@gmail.com", 15, Colors.black54)
                          ],
                        )
                              ],
                            ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 19,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: BoldText("Information About Bank", 20, Colors.black),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        controller: bankname_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Bank Name',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Name
                      TextFormField(
                        controller: fcfsnum_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'FCFS code',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Email
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 260,
                          child: TextFormField(
                            controller: accountno_controller,                                decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Account Number',
                          ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ), //Number
                      TextFormField(
                        controller: branchBank_controller,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Branch',
                        ),
                      ),

                      SizedBox(
                        height: 80,
                      ), //City
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.deepPurpleAccent,
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            String bankname = bankname_controller.text;
                            String fcfsnum = fcfsnum_controller.text;
                            String accountno =
                                accountno_controller.text;
                            String branch = branchBank_controller.text;


                            userdata2.write('bankname', bankname);
                            userdata2.write('fcfsnum', fcfsnum);

                            userdata2.write('accountno', accountno);
                            userdata2.write('branch', branch);


                            Get.offAll(Saved2());
                          },
                          child: Text(
                            "Save",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}