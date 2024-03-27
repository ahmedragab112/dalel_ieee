import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static Color primeryColor = const Color(0xffC49E85);
  static ThemeData lightTheme = ThemeData(
      iconTheme: IconThemeData(color: primeryColor),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: primeryColor,
        suffixIconColor: primeryColor,
        isDense: true,
        
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                color: const Color(0xff0F0D23).withOpacity(.20), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                  color: const Color(0xff0F0D23).withOpacity(.20), width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                  color: const Color(0xff0F0D23).withOpacity(.20), width: 1))));
  static ThemeData darkTheme = ThemeData();
}
