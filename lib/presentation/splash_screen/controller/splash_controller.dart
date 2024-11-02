import 'dart:async';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../login_page/login_page.dart';
import '../../nav_bar/nav_bar.dart';

class SplashController extends GetxController {
  RxInt isSkip = 0.obs;
  customInit() {
    isSkip.value = 0;
    Timer(
      const Duration(seconds: 2),
      () async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        var token = sharedPreferences.getString("token");
        Get.offAll(() =>
            token != null ? NavScreenBar(currentIndex: 0) : const LoginPage());
      },
    );
  }
}
