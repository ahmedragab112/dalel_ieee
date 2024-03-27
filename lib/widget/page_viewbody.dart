import 'package:dalelieee/cache/local_dp.dart';
import 'package:dalelieee/model/pageviewmodel.dart';
import 'package:dalelieee/screens/sign_up.dart';
import 'package:dalelieee/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.index,
      required this.controller});
  final String title;
  final String description;
  final String imagePath;
  final int index;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imagePath,
          width: double.infinity,
          height: 290.h,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 24.h,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: pages.length,
          effect: ExpandingDotsEffect(
            activeDotColor: const Color(0xff6B4B3E),
            dotColor: const Color(0xffD9D9D9),
            dotWidth: 6.w,
            dotHeight: 6.h,
          ), // your preferred effect
        ),
        SizedBox(
          height: 32.h,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          description,
          style:
              GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 16.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 88.sp,
        ),
        CustomButton(
          text: index != 2 ? 'Next' : 'Get Started',
          function: () async {
            await controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
            if (index == 2) {
              await CacheHelper().setBool('onBoard', true).then((value) {
                Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
              });
            }
          },
        )
      ],
    );
  }
}
