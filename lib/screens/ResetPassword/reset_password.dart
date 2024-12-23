import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:mostasmer/screens/HomePage/Home_page_Screen.dart';
import 'package:mostasmer/screens/ResetPassword/reset_Password_Controller.dart';
import 'package:mostasmer/widgets/App_Button.dart';
import '../../widgets/Custom_TextField.dart';
// import '../../widgets/nav_bar.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _passController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  final ResetPasswordController _controller = Get.put(ResetPasswordController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 120,),
                Image.asset('assets/onboarding.png', width: 100, height: 160,),
                const SizedBox(height: 25,),
                Text(tr('reset_password'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

                const SizedBox(height: 10,),

                Text(tr('reset_password_message'), style: const TextStyle( fontSize: 14,color: Color(0xff8B8B8B)),textAlign: TextAlign.center,),

                const SizedBox(height: 25,),

                CustomTextField(
                  controller: _passController,
                  // labelText: 'Password'.tr(),
                  hintText: tr('Password'),
                  obscureText: !_isPasswordVisible,
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 15,),

                CustomTextField(
                  controller: _passwordController,
                  // labelText: 'Password'.tr(),
                  hintText: tr('Confirm_New_Password'),
                  obscureText: !_isPasswordVisible,
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 30,),

                Obx(() => _controller.isLoading.value
                    ? CircularProgressIndicator()
                    : CustomButton(
                  text: tr('Submit'),
                  onPressed: () {
                    if(_passController.text==_passwordController.text){
                      _controller.changePassword(
                          _passController.text
                      );
                    }else{
                      Get.snackbar(
                        'Password Not Match',
                        "Rewrite Your Password",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.redAccent,
                        colorText: Colors.white,
                      );
                    }
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


