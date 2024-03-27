import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.lableText,
    this.type = TextInputType.text,
    this.obscureText = false,
    this.suffix,
    this.prefixIcon,
  });
  final String lableText;
  final TextInputType type;
  final Widget? prefixIcon;
  final Widget? suffix;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: type,
      style: GoogleFonts.poppins(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff07122E),
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffix,
        label: Text(
          lableText,
          style: GoogleFonts.poppins(
              fontSize: 12.sp, color: const Color(0xff6F6460)),
        ),
      ),
    );
  }
}
