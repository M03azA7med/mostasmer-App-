// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:mostasmer/screens/LoginScreen/login_screen.dart';
// import 'package:mostasmer/screens/Privacy_policy/Privacy-policy.dart';
// import 'package:mostasmer/widgets/App_Button.dart';
// import '../../widgets/Custom_TextField.dart';
// import '../Terms&conditions/Terms-and-conditions.dart';
//
// class SignupScreen extends StatefulWidget {
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }
//
// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>(); // Add form key for validation
//   final _fullNameController = TextEditingController();
//   final _mobileController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isChecked = false;
//   bool _isPasswordVisible = false;
//

//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Form( // Wrap the entire form with a Form widget
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 120,),
//                   Image.asset('assets/onboarding.png', width: 100, height: 160,),
//                   const SizedBox(height: 25,),
//                   Text('Sign Up'.tr(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                   const SizedBox(height: 25,),
//
//                   // Full Name Field
//                   CustomTextField(
//                     controller: _fullNameController,
//                     hintText: 'Full Name',
//                     prefixIcon: Icons.person_outline,
//                     keyboardType: TextInputType.text,
//                     validator: _validateFullName,
//                   ),
//                   const SizedBox(height: 15,),
//
//                   // Mobile Number Field
//                   CustomTextField(
//                     controller: _mobileController,
//                     hintText: 'Mobile Number',
//                     prefixIcon: Icons.phone_outlined,
//                     keyboardType: TextInputType.phone,
//                     validator: _validateMobile,
//                   ),
//                   const SizedBox(height: 15,),
//
//                   // Email Field
//                   CustomTextField(
//                     controller: _emailController,
//                     hintText: 'Email',
//                     prefixIcon: Icons.email_outlined,
//                     keyboardType: TextInputType.emailAddress,
//                     validator: _validateEmail,
//                   ),
//                   const SizedBox(height: 15,),
//
//                   // Password Field
//                   CustomTextField(
//                     controller: _passwordController,
//                     hintText: 'Password',
//                     obscureText: !_isPasswordVisible,
//                     prefixIcon: Icons.lock_outline,
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isPasswordVisible = !_isPasswordVisible;
//                         });
//                       },
//                     ),
//                     validator: _validatePassword,
//                   ),
//                   const SizedBox(height: 20,),
//
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Checkbox(
//                             activeColor: const Color(0xffBEEBE4),
//                             value: _isChecked,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 _isChecked = value!;
//                               });
//                             },
//                           ),
//                           Text('Remember Me'.tr()),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 25,),
//
//                   CustomButton(
//                     text: 'Sign Up'.tr(),
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         // showImageTextBottomSheet(context);
//                       }
//                     },
//                   ),
//                   const SizedBox(height: 40,),
//                   RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: 'Already have an account? ',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                           ),
//                         ),
//                         TextSpan(
//                           text: 'Log In',
//                           style: TextStyle(
//                             color: Color(0xff2AB09C),
//                             fontSize: 16,
//                             decoration: TextDecoration.underline,
//                           ),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//
//                               print('Log In tapped');
//                             },
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20,),
//                   RichText(
//                     textAlign: TextAlign.center,
//                     text: TextSpan(
//
//                       children: [
//                         TextSpan(
//                           text: 'by  signing up, you agree to ',
//                           style: TextStyle(
//                             color: Color(0xff8B8B8B),
//                             fontSize: 16,
//                           ),
//                         ),
//                         TextSpan(
//                           text: 'terms & conditions',
//                           style: TextStyle(
//                             color: Color(0xff2AB09C),
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.underline,
//                           ),
//
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                            Navigator.push(context, MaterialPageRoute(builder: (context) => Termsandconditions(),));
//                             },
//                         ),
//                         TextSpan(
//                           text: ' & ',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//
//                           ),
//                         ),
//                         TextSpan(
//                           text: 'privacy policy',
//                           style: TextStyle(
//                             color: Color(0xff2AB09C),
//                             fontWeight: FontWeight.bold,
//
//                             fontSize: 16,
//                             decoration: TextDecoration.underline,
//                           ),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context) => Privacypolicy(),));
//
//                             },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/screens/SignUpScreen/signup_controller.dart';
import '../../widgets/App_Button.dart';
import '../../widgets/Custom_TextField.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final SignupController signupController = Get.put(SignupController());
  // Validation functions
  String? _validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    return null;
  }

  String? _validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile number is required';
    }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Please enter a valid mobile number';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Obx(
              () => signupController.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 120),
                    Image.asset('assets/onboarding.png',
                        width: 100, height: 160),
                    const SizedBox(height: 25),
                    Text(tr('SignUp'),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    const SizedBox(height: 25),

                    // Full Name Field
                    CustomTextField(
                      controller: _fullNameController,
                      hintText: tr('FullName'),
                      prefixIcon: Icons.person_outline,
                      validator: _validateFullName,
                    ),
                    const SizedBox(height: 15),

                    // Mobile Number Field
                    CustomTextField(
                      controller: _mobileController,
                      hintText: tr('MobileNumber'),
                      prefixIcon: Icons.phone_outlined,
                      keyboardType: TextInputType.phone,
                      validator: _validateMobile,

                    ),
                    const SizedBox(height: 15),

                    // Email Field
                    CustomTextField(
                      controller: _emailController,
                      hintText: tr('Email'),
                      prefixIcon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 15),

                    // Password Field
                    CustomTextField(
                      controller: _passwordController,
                      hintText: tr('Password'),
                      obscureText: true,
                      prefixIcon: Icons.lock_outline,
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 20),

                    CustomButton(
                      text: tr('SignUp'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          signupController.signup(
                            fullName: _fullNameController.text.trim(),
                            email: _emailController.text.trim(),
                            phone: _mobileController.text.trim(),
                            password: _passwordController.text.trim(),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

