import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:client_booking/models/login/user_model.dart';
import 'package:client_booking/repository/login_repository/login_repository.dart';
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view_models/controller/user_preference/user_prefrence_view_model.dart';

class LoginViewModel extends GetxController {

  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi(){
    loading.value = true ;
    Map data = {
      'email' : emailController.value.text,
      'password' : passwordController.value.text
    };
    _api.loginApi(data).then((value){
      loading.value = false ;

      if(value.status == 'user not found'){
        Utils.snackBar('Login', value.status ?? "");
      }else {

        UserModel userModel = UserModel(
            // token: value['token'] ,
          isLogin: true
        );

        userPreference.saveUser(userModel).then((value){

          // releasing resources because we are not going to use this
          Get.delete<LoginViewModel>();
          Get.toNamed(RouteName.homeView)!.then((value){});
          Utils.snackBar('Login', 'Login successfully');

        }).onError((error, stackTrace){

        });

      }
    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('Error', error.toString());
    });
  }
}