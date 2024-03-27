import 'package:dalelieee/cache/local_dp.dart';
import 'package:dalelieee/screens/login.dart';
import 'package:dalelieee/screens/onboarding.dart';
import 'package:dalelieee/screens/sign_up.dart';
import 'package:dalelieee/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(const DalelIee());
}

class DalelIee extends StatelessWidget {
  const DalelIee({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SignUpScreen.routeName,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routes: {
          OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
           Login.routeName: (context) => const Login(),
        },
      ),
    );
  }
}
