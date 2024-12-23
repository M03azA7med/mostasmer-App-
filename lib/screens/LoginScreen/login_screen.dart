import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/screens/SignUpScreen/signup_screen.dart';
import '../../widgets/Custom_TextField.dart';
import '../../widgets/App_Button.dart';
import '../ForgotPassword/forgot_password.dart';
import 'Login_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                Image.asset('assets/onboarding.png', width: 100, height: 160),
                const SizedBox(height: 25),
                Text(
                  tr('LogIn'),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 25),

                CustomTextField(
                  controller: _controller.emailController,
                  hintText:  tr('EmailorMobileNumber'),
                  prefixIcon: Icons.local_phone_outlined,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 15),

                Obx(() => CustomTextField(
                  controller: _controller.passwordController,
                  hintText:  tr('Password'),
                  obscureText: !_controller.isPasswordVisible.value,
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _controller.isPasswordVisible.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: () {
                      _controller.isPasswordVisible.value = !_controller.isPasswordVisible.value;
                    },
                  ),
                )),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Obx(() => Checkbox(
                          activeColor: const Color(0xff223F48),
                          value: _controller.RememberMy.value,
                          onChanged: (bool? value) {
                            _controller.RememberMy.value = value!;
                          },
                        )),
                        Text( tr('RememberMe')),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => ForgotPassword()),
                      child: Text(
    tr('ForgotPassword'),
                        style: const TextStyle(
                          color: Color(0xff2AB09C),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                Obx(() => _controller.isLoading.value
                    ? CircularProgressIndicator()
                    : CustomButton(
                  text:  tr('LogIn'),
                  onPressed:
                    _controller.login,

                )),
                const SizedBox(height: 40),
                RichText(
                  text: TextSpan(
                    children: [
                       TextSpan(
                        text: tr('Donthaveanaccount'),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: tr('SignUp'),
                        style: const TextStyle(
                          color: Color(0xff2AB09C),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => SignupScreen()),
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
