import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/screens/Privacy_policy/Privacy-policy.dart';

import '../RechargeCredit/RechargeCredit.dart';
import '../send_a_gift/send_a_gift.dart';
import 'Transactions_class.dart';

class BalancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView( // Allow scrolling for the entire layout
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                // Balance Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Balance',
                            style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.04,
                            width: MediaQuery.of(context).size.height*0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Color(0xFF2AB09C)
                              )
                            ),
                            child: Center(
                              child: IconButton(onPressed: (){

                                Navigator.push(context, MaterialPageRoute(builder: (context) => Privacypolicy()));

                              }, icon: Icon(Icons.question_mark,color: Color(0xFF2AB09C),
                              size: MediaQuery.of(context).size.width*0.03,
                              )),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '800 Points',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '80 SR',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF2AB09C),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Rechargecredit(),));
                                  },
                                  child: Text(
                                    'Recharge',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF2AB09C),
                                      elevation: 5),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SendAGift(),));
                                  },
                                  child: Text(
                                    'Gift',
                                    style: TextStyle(color: Color(0xFF2AB09C)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white, elevation: 5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Transactions Section
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transactions',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      // Tabs
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Gifts:',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Payment:',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Recharge:',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '4',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Filter
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'History',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 16,
                                        color: Color(0xFF2AB09C),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text('From'),
                                          Text('08/07/2024'),
                                        ],
                                      ),
                                      SizedBox(width: 15),
                                      Icon(
                                        Icons.calendar_today,
                                        size: 16,
                                        color: Color(0xFF2AB09C),
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text('To'),
                                          Text('08/07/2024'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.black,
                              ),
                              // History List
                              ListView(
                                shrinkWrap: true, // Constrain height of ListView
                                physics:
                                NeverScrollableScrollPhysics(), // Avoid nested scroll
                                children: [
                                  TransactionItem(
                                    title: 'Gain 400 points',
                                    subtitle: 'Purchase items costing 800 SR',
                                    date: '26/08/2024',
                                    validity: 'Valid to 27/08/2025',
                                    icon: "assets/images/Coins.png",
                                  ),
                                  TransactionItem(
                                    title: 'Recharge 500 points',
                                    subtitle: 'Recharge points costing 50 SR',
                                    date: '16/08/2024',
                                    validity: 'Valid to 17/08/2025',
                                    icon: 'assets/images/Coins.png',
                                  ),
                                  TransactionItem(
                                    title: 'Gift 500 points',
                                    subtitle: 'You gift points to Ahmed Ahmed',
                                    date: '15/08/2024',
                                    validity: 'Valid to 16/08/2025',
                                    icon: "assets/images/Coins.png",
                                  ),
                                  TransactionItem(
                                    title: 'Gain 400 points',
                                    subtitle: 'Purchase items costing 800 SR',
                                    date: '02/08/2024',
                                    validity: 'Valid to 03/08/2025',
                                    icon: "assets/images/Coins.png",
                                  ),
                                ],
                              ),
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
        ),
      ),
    );
  }
}
