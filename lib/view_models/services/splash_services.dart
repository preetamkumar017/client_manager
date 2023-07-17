import 'dart:async';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:get/get.dart';
import 'package:client_manager/res/routes/routes_name.dart';

class SplashServices {
  void isLogin() {
    bool? isLogin = login.read("isLogin");

    if (isLogin == null || !isLogin) {
      Timer(const Duration(seconds: 3),
          () => Get.toNamed(RouteName.preLoginView));
    } else {
      Timer(const Duration(seconds: 3),
          () => Get.toNamed(RouteName.dashboardView));
    }
  }
}