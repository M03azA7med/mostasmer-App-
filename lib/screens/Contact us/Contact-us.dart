import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Bar2.dart';

import '../../widgets/App_Button.dart';
import '../../widgets/Custom_TextField.dart';
import '../../widgets/follow Us.dart';

class Contactus extends StatelessWidget {
   Contactus({super.key});

  final Name=TextEditingController();
  final Surname =TextEditingController();
  final Email  =TextEditingController();
  final Message  =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: AppBar2(PageName: 'Contact us'),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                width: 15,
                              ),
                              CustomTextField(
                                controller: Name,
                                hintText: 'Value',
                                keyboardType: TextInputType.text,
                              ),
                              const SizedBox(width: 10),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Surname',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                width: 15,
                              ),
                              CustomTextField(
                                controller: Surname,
                                hintText: 'Value',
                                keyboardType: TextInputType.text,
                              ),
                              const SizedBox(width: 10),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                width: 15,
                              ),
                              CustomTextField(
                                controller: Email,
                                hintText: 'Value',
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(width: 10),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Message',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                width: 15,
                              ),
                              CustomTextField(
                                controller: Message,
                                hintText: 'Value',
                                keyboardType: TextInputType.text,
                              ),
                              const SizedBox(width: 10),

                            ],
                          ),




                        ]

                    ),
                  ),
                ),
              ),
              SizedBox(height: 35,),

              CustomButton(
                onPressed: (){},
                text: 'Submit',
              ),
              SizedBox(height: 35,),

              Follow_us()

            ],
          ),
        ),
      ),
    );
  }
}
