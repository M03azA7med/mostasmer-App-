import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../widgets/App_Bar2.dart';
import '../../widgets/CustomPainter.dart';
import '../../widgets/card_Badges.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    const AppBar2(
                      PageName: " Badges",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              70.0, 10.0, 0.0, 10.0),
                          child: Text(
                            "View rules",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFF2AB09C),
                              color: HexColor('#2AB09C'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/Badge.png',
                    fit: BoxFit.contain,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Sama Mohamed',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sama Mohamed121@gmail.com',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const CircularProgress(
                    percentage: 5,
                    backgroundColor: Color(0xFF00255C),
                    progressColor: Color(0xFF00398E),
                    size: 40,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              CardBadges(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Basic rewards',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
          
                        ),),
                        Image.asset('assets/images/Gift.png'),
          
                      ],
                    ),
                    SizedBox(height: 15,),
                    // BrandCard(image: "assets/images/image (3).png", Name: "Amazon")
          
                  ],
                ),
              ),
          
          
            ],
          ),
        ),
      ),
    );
  }
}
