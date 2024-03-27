import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlreadyHaveAccount extends StatelessWidget {
  const CustomAlreadyHaveAccount(
      {super.key,
      required this.txt1,
      required this.txt2,
      required this.callBack});
  final String txt1;
  final String txt2;
  final VoidCallback callBack;
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: txt1,
                style: GoogleFonts.poppins(
                    color: const Color(0xff6F6460),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400)),
            TextSpan(
                text: txt2,
                style: GoogleFonts.poppins(
                    color: const Color(0xffB4B4B4),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    callBack();
                  }),
          ],
        ));
  }
}
