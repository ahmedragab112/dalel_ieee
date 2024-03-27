import 'dart:developer';

import 'package:dalelieee/screens/login.dart';
import 'package:dalelieee/widget/already_have_account.dart';
import 'package:dalelieee/widget/custom_button.dart';
import 'package:dalelieee/widget/custom_textfiled.dart';
import 'package:dalelieee/widget/sign_up_rules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = 'sing up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool changeObsureText = false;

  @override
  Widget build(BuildContext context) {
    log(changeObsureText.toString());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 17.0.h, horizontal: 24.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 91.h,
            ),
            Text(
              "Welcome !",
              style: GoogleFonts.poppins(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 46.h,
            ),
            const CustomTextFiled(
                lableText: 'First Name', prefixIcon: Icon(Icons.person)),
            SizedBox(
              height: 18.h,
            ),
            const CustomTextFiled(
                lableText: 'Last Name', prefixIcon: Icon(Icons.person)),
            SizedBox(
              height: 18.h,
            ),
            const CustomTextFiled(
                lableText: 'Email Address',
                type: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.email)),
            SizedBox(
              height: 18.h,
            ),
            CustomTextFiled(
              prefixIcon: const Icon(Icons.lock),
              lableText: 'Password',
              obscureText: changeObsureText,
              suffix: InkWell(
                  onTap: () {
                    changeObsureText = !changeObsureText;
                    setState(() {});
                  },
                  child: const Icon(Icons.visibility, size: 24)),
            ),
            SizedBox(
              height: 16.h,
            ),
            const SingUpRueles(),
            SizedBox(
              height: 88.h,
            ),
            CustomButton(
              text: 'SingUp',
              function: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomAlreadyHaveAccount(
              txt1: 'Already have an account ? ',
              txt2: ' Sign In',
              callBack: () {
                Navigator.pushReplacementNamed(context, Login.routeName);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
