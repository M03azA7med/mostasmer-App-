import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/App_Bar2.dart';
import '../../widgets/App_Button.dart';
import '../../widgets/Custom_TextField.dart';

class SendAGift extends StatelessWidget {
   SendAGift({super.key});
  final Paidbalance=TextEditingController();
  final Pointsbalance =TextEditingController();
  final ReceiverName  =TextEditingController();
  final Phone_email  =TextEditingController();
  final massage  =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: AppBar2(PageName: 'send a gift'),
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
                          Row(
                            children: [
                              Text('Amount *'),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 1,
                                child: CustomTextField(
                                  controller: Paidbalance,
                                  hintText: 'Paid balance',
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/images/card-coin.png',
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 1,
                                child: CustomTextField(
                                  controller: Pointsbalance,
                                  hintText: 'Points balance ',
                                  keyboardType: TextInputType.number,
                                ),
                              ),

                            ],
                          ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Receiver Name *'),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: CustomTextField(
                                controller: ReceiverName,
                                hintText: 'Ahmed Mohamed',
                                keyboardType: TextInputType.number,
                              ),
                            ),
        
        
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Phone / email *'),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: CustomTextField(
                                controller: Phone_email,
                                hintText: 'ahmedmohamed@gmail.com ',
                                keyboardType: TextInputType.number,
                              ),
                            ),
        
        
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Message'),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 1,
                              child: CustomTextField(
                                controller:massage ,
                                hintText: '',
                                keyboardType: TextInputType.number,
                              ),
                            ),
        
        
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
                text: 'Send',
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
