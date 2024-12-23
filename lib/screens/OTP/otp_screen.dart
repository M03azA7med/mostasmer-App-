import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:mostasmer/screens/ResetPassword/reset_password.dart';
import 'package:mostasmer/utils/api_constant.dart';
import 'dart:async';
import '../../widgets/App_Button.dart';
import '../ForgotPassword/ForgotPasswordController.dart';
import 'otp_controller.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Timer _timer;
  int _remainingTime = 60;
  final OtpController _controller = Get.put(OtpController());
  final ForgotPasswordController _controller2 = Get.put(ForgotPasswordController());

  String? Code;


  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    setState(() {
      _remainingTime = 60;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/onboarding.png', width: 100, height: 160),
                      const SizedBox(height: 25),
                      Text(
                        tr('EnterOTP'),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          tr('OTPMessage'),
                          style: const TextStyle(color: Color(0XFF8B8B8B), fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 25),
                      OtpTextField(

                        numberOfFields: 6, // Changed from 4 to 6
                        borderColor: Color(0xFF512DA8),
                        showFieldAsBox: true,
                        onCodeChanged: (String code) {
                          // Handle validation or checks here if needed
                        },
                        onSubmit: (String verificationCode) {
                          Code=verificationCode; // Pass the entered OTP to the controller
                        },
                      ),

                      const SizedBox(height: 20),
                      _remainingTime > 0
                          ? Text(
                        '${tr('TheOTPwillexpirein')} $_remainingTime',
                        style: const TextStyle(color: Color(0xff2AB09C), fontSize: 16,fontWeight: FontWeight.bold),
                      )
                          : RichText(
                        text: TextSpan(
                          text: tr('Didntreceiveit'),
                          style: const TextStyle(color: Colors.black, fontSize: 14),
                          children: [
                            TextSpan(
                              text: tr('PleaseResend'),
                              style: const TextStyle(color: Color(0xff2AB09C), fontSize: 14, fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _controller2.reset(AppConstants.Email);

                                  _startTimer();
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Center(
                  child:  Obx(() => _controller.isLoading.value
                      ? CircularProgressIndicator()
                      : CustomButton(
                    text: tr('SubmitOTP'),
                    onPressed: () {
                      _controller.checkOtp(Code!);
                      AppConstants.Code=Code!;
                      print('Submit OTP button pressed$Code');
                    },
                  )),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}