
import 'package:client_manager/repository/booking_repository/booking_form_repository.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view_models/controller/booking/booking_form1_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlotDetailsController extends GetxController
{
  final clintInfo = Get.find<ClientInfoController>();
  final loadingFullPage = Get.find<BookingForm1Controller>();

  RxBool loading = false.obs;
  final _api = BookingFormRepository();

  final location      = TextEditingController().obs ;
  final plotNumber      = TextEditingController().obs ;
  final plotSize      = TextEditingController().obs ;
  final depth      = TextEditingController().obs ;

  RxString plotFacing = "".obs;
  RxString roads      = "".obs;
  RxString roadss      = "".obs;
  RxBool nextPage = false.obs;

  void submit()
  {
    if(plotSize.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter Plot Size");
      nextPage.value = false;
    }
    else{
      nextPage.value = true;
      Map data = {
        "booking_id": clintInfo.lastId.value,
        "plot_location": location.value.text,
        "plot_no": plotNumber.value.text,
        "plot_size": plotSize.value.text,
        "plot_facing": plotFacing.value,
        "num_road": roads.value,
        "plot_depth": depth.value.text,
        'create_by':login.read("id").toString(),
      };
      //debugPrint(data.toString());

      loading.value = true;
      loadingFullPage.loading.value = true;
      _api.plotDetails(data).then((value) {
        if (value.code == 200) {}
        loading.value = false;
        loadingFullPage.loading.value = false;
      }).onError((error, stackTrace) {
        loading.value = false;
        loadingFullPage.loading.value = false;
      });
    }
  }
}

class PlotDetailsEditController extends GetxController
{

  RxBool loading = false.obs;
  final _api = BookingFormRepository();



  final location      = TextEditingController().obs ;
  final plotNumber      = TextEditingController().obs ;
  final plotSize      = TextEditingController().obs ;
  final depth      = TextEditingController().obs ;

  RxString plotFacing = "".obs;
  RxString roads      = "".obs;
  RxString bookingId      = "".obs;
  RxString id      = "".obs;

  RxList<String> plotFacingList = <String>[].obs;
  RxList<String> roadsList = <String>[].obs;

  void submit()
  {
    if(plotSize.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter Plot Size");
    }
    else {
      Map data = {
        "booking_id": bookingId.value,
        "id": id.value,
        "plot_location": location.value.text,
        "plot_no": plotNumber.value.text,
        "plot_size": plotSize.value.text,
        "plot_facing": plotFacing.value,
        "num_road": roads.value,
        "plot_depth": depth.value.text,
        'create_by':login.read("id").toString(),
      };
      //debugPrint(data.toString());


      loading.value = true;
      // loadingFullPage.loading.value = true;
      _api.plotDetails(data).then((value) {
        if (value.code == 200) {
          Get.back(result: true, canPop: true);

        } else if (value.code == 201) {
          Get.back(result: true, canPop: true);
        }
        loading.value = false;
        // loadingFullPage.loading.value = false;
      }).onError((error, stackTrace) {
        loading.value = false;
        // loadingFullPage.loading.value = false;
      });
    }
  }
}