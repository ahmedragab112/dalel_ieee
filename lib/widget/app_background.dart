import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBackGround extends StatelessWidget {
  const AppBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          alignment: Alignment.center,
          color: const Color(0xffC49E85),
          width: double.infinity,
          height: 290.h,
          child: Text(
            'Dalel',
            style: GoogleFonts.saira(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SvgPicture.asset(
                'assets/svg/purimd.svg',
                width: 260.w,
                height: 125.h,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                'assets/svg/casl.svg',
                width: 175.w,
                height: 125.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
