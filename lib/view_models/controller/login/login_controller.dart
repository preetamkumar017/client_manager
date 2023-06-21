import 'package:client_booking/repository/login_repository/login_repository.dart';
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view_models/services/box_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  final _api = LoginRepository();

  RxBool emailAddressLoginVisibility = true.obs;
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;

  void submit()
  {
    Map<String,String> data = <String,String>{};
    if(email.value.text=="")
      {
        Utils.snackBar("Missing Filed", "Please enter Email");
      }else if(password.value.text=="")
        {
          Utils.snackBar("Missing Filed", "Please enter Password");
          }else
          {
            data = {
              "email": email.value.text,
              "password": password.value.text
            };

            _api.loginApi(data).then((value) {
              if(value.code==200)
              {
                login.write("isLogin", true);
                login.write("token", "value");
                login.write("id", value.message);
                dashboardTour.write("tour", true);
                Get.offAllNamed(RouteName.dashboardView);
              }else
                {
                  Utils.snackBar("Login Error", value.message ?? "");
                }
            }).onError((error, stackTrace) {
              Utils.snackBar("Login Error", error.toString() );
            });

          }





  }

}