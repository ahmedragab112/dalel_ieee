import 'package:dalelieee/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpRueles extends StatelessWidget {
  const SingUpRueles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomChechBox(),
        SizedBox(
          width: 8.w,
        ),
        RichText(
            textAlign: TextAlign.start,
            text: TextSpan(children: [
              TextSpan(
                text: 'I have agree to our ',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: const Color(0xff6F6460),
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                  text: ' Terms and Condition',
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: const Color(0xff6F6460),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline))
            ]))
      ],
    );
  }
}

class CustomChechBox extends StatefulWidget {
  const CustomChechBox({
    super.key,
  });

  @override
  State<CustomChechBox> createState() => _CustomChechBoxState();
}

class _CustomChechBoxState extends State<CustomChechBox> {
  bool changeCheck = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppTheme.primeryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
          side: const BorderSide(color: Color(0xff0F0D23), width: 1)),
      value: changeCheck,
      onChanged: (bool? value) {
        changeCheck = value!;
        setState(() {});
      },
    );
  }
}
