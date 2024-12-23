import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:mostasmer/screens/OTP/otp_screen.dart';
import '../../widgets/App_Button.dart';
import '../../widgets/Custom_TextField.dart';
import 'ForgotPasswordController.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final ForgotPasswordController _controller =
      Get.put(ForgotPasswordController());

  String selectedField = "email";

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
                Row(
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/onboarding.png',
                          width: 100, height: 160),
                      const SizedBox(height: 25),
                      Text(
                        tr('ForgotPassword'),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          tr('forgetmesage'),
                          style: const TextStyle(
                              color: Color(0XFF8B8B8B), fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      activeColor: Color(0xff2AB09C),
                      value: "email",
                      groupValue: selectedField,
                      onChanged: (value) {
                        setState(() {
                          selectedField = value as String;
                        });
                      },
                    ),
                    Text(
                      tr('ResetPasswordviaEmail'),
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ],
                ),
                CustomTextField(
                  controller: _emailController,
                  hintText: tr('Email'),
                  prefixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  enabled: selectedField == "email",
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Radio(
                      activeColor: Color(0xff2AB09C),
                      value: "phone",
                      groupValue: selectedField,
                      onChanged: (value) {
                        setState(() {
                          selectedField = value as String;
                        });
                      },
                    ),
                    Text(
                      tr('ResetPasswordviaMobile'),
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ],
                ),
                CustomTextField(
                  controller: _phoneController,
                  hintText: tr('MobileNumber'),
                  prefixIcon: Icons.local_phone_outlined,
                  keyboardType: TextInputType.phone,
                  enabled: selectedField == "phone",
                ),
                const SizedBox(height: 30),
                Center(
                  child:  Obx(() => _controller.isLoading.value
                      ? CircularProgressIndicator()
                      : CustomButton(
                    text: tr('GetOTP'),
                    onPressed: () {
                      _controller.reset(_emailController.text);
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
