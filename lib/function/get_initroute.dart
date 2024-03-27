import 'package:dalelieee/cache/local_dp.dart';
import 'package:dalelieee/screens/sign_up.dart';
import 'package:dalelieee/screens/onboarding.dart';

String? setInitRoute() {
  if (CacheHelper().getBool('onBoard')) {
    return SignUpScreen.routeName;
  } else {
    return OnBoardingScreen.routeName;
  }
}
