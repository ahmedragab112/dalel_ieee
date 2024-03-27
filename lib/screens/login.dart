import 'package:dalelieee/screens/sign_up.dart';
import 'package:dalelieee/widget/already_have_account.dart';
import 'package:dalelieee/widget/app_background.dart';
import 'package:dalelieee/widget/custom_button.dart';
import 'package:dalelieee/widget/custom_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const String routeName = 'login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changeObsureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const AppBackGround(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Welcome  !",
                style: GoogleFonts.poppins(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 48.h,
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
                height: 18.h,
              ),
              const Text(
                'Forgot Password ?',
                textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomButton(
                text: 'Login',
                function: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomAlreadyHaveAccount(
                txt1: 'Don’t have an account ?',
                txt2: 'Sign Up',
                callBack: () {
                  Navigator.pushReplacementNamed(
                      context, SignUpScreen.routeName);
                },
              )
            ],
          ),
        ),
      ]),
    );
  }
}
