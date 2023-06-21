import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingForm1Controller extends GetxController
{


  Rx<PageController> pageViewController = PageController(initialPage: 0).obs;
  RxString selectedPlan = "".obs;
  RxBool onclick = false.obs;
  RxBool loading = false.obs;

  RxString amount33p = "".obs;


}