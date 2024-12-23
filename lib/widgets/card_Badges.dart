import 'package:flutter/material.dart';

class CardBadges extends StatefulWidget {
  const CardBadges({super.key});

  @override
  State<CardBadges> createState() => _CardBadgesState();
}

class _CardBadgesState extends State<CardBadges> {
  double sliderValue = 5.0; // Initial value for the slider

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF0066FF), Color(0xFF00255C)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, 0.34),
                  end: AlignmentDirectional(-1.0, -0.34),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.0, -1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Image.asset(
                        'assets/images/badge2.png',
                        width: 93.0,
                        height: 130.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 60.0,
                              height: 80.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/person.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.zero,
                                      child: Image.asset(
                                        'assets/images/Badge.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Row(
                                      children: [

                                        Image.asset('assets/images/mony.png',height: 20,),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                        const Text(
                                          '800 Points',
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Reward balance',
                                  style: TextStyle(fontSize: 12.0,
                                  color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 50.0),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Your purchase',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: Slider(
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.grey.shade400,
                                  min: 0.0,
                                  max: 10.0,
                                  value: sliderValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue = newValue;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 25.0),
            child: Text(
              'Remaining purchase 400 SR to upgrade to standard account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
