
import 'package:client_manager/repository/booking_repository/booking_form_repository.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view_models/controller/booking/booking_form1_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayeeController extends GetxController
{
  final clintInfo = Get.find<ClientInfoController>();
  final loadingFullPage = Get.find<BookingForm1Controller>();

  final _api = BookingFormRepository();

  final clientName = TextEditingController().obs ;
  final relation = TextEditingController().obs ;
  final mobile = TextEditingController().obs ;
  final email = TextEditingController().obs ;
  final pan = TextEditingController().obs ;
  final aadhaar = TextEditingController().obs ;
  final pyHouseNo = TextEditingController().obs ;
  final pyColony = TextEditingController().obs ;
  final pyLandmark = TextEditingController().obs ;
  final pyCity = TextEditingController().obs ;
  final pyState = TextEditingController().obs ;
  final pyPin = TextEditingController().obs ;

  RxBool dmSameAsClient = false.obs;

  RxBool loading = false.obs;
  RxBool nextPage = false.obs;

  dmSameAsClientAdd( newVal)
  {
    dmSameAsClient.value = newVal ;

    if(newVal)
    {
      clientName.value.text = clintInfo.clientName.value.text ;
      relation.value.text   = "self" ;
      mobile.value.text     = clintInfo.mobile.value.text ;
      email.value.text      = clintInfo.email.value.text ;
      pan.value.text        = clintInfo.pan.value.text ;
      aadhaar.value.text    = clintInfo.aadhaar.value.text ;
      pyHouseNo.value.text  = clintInfo.presentHouseNo.value.text  ;
      pyColony.value.text   = clintInfo.presentColony.value.text ;
      pyLandmark.value.text = clintInfo.presentLandmark.value.text ;
      pyCity.value.text     = clintInfo.presentCity.value.text ;
      pyState.value.text    = clintInfo.presentCity.value.text ;
      pyPin.value.text      = clintInfo.presentPin.value.text ;
    }else
    {
      clientName.value.text = "";
      relation.value.text = "";
      mobile.value.text = "";
      email.value.text = "";
      pan.value.text = "";
      aadhaar.value.text = "";
      pyHouseNo.value.text = "";
      pyColony.value.text = "";
      pyLandmark.value.text = "";
      pyCity.value.text = "";
      pyState.value.text = "";
      pyPin.value.text = "";
    }

  }

  void submit()
  {
    if(clientName.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter Name");
      nextPage.value = false;
    }else{
      nextPage.value = true;
      Map data = {
        'booking_id': clintInfo.lastId.value,
        'payee_name': clientName.value.text,
        'p_relation': relation.value.text,
        'p_mobile_no': mobile.value.text,
        'p_email_id': email.value.text,
        'p_pan_no': pan.value.text,
        'p_aadhar_no': aadhaar.value.text,
        'p_hno': pyHouseNo.value.text,
        'p_street': pyColony.value.text,
        'p_landmark': pyLandmark.value.text,
        'p_city': pyCity.value.text,
        'p_state': pyState.value.text,
        'p_pincode': pyPin.value.text,
        'create_by':login.read("id").toString(),
      };
      loading.value = true;
      loadingFullPage.loading.value = true;
      _api.payee(data).then((value) {
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


class PayeeEditController extends GetxController
{

  final _api = BookingFormRepository();

  final clientName = TextEditingController().obs ;
  final relation = TextEditingController().obs ;
  final mobile = TextEditingController().obs ;
  final email = TextEditingController().obs ;
  final pan = TextEditingController().obs ;
  final aadhaar = TextEditingController().obs ;
  final pyHouseNo = TextEditingController().obs ;
  final pyColony = TextEditingController().obs ;
  final pyLandmark = TextEditingController().obs ;
  final pyCity = TextEditingController().obs ;
  final pyState = TextEditingController().obs ;
  final pyPin = TextEditingController().obs ;

  RxString id = "".obs;
  RxString bookingId = "".obs;

  RxBool dmSameAsClient = false.obs;

  RxBool loading = false.obs;


  void submit()
  {

    if(clientName.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter Name");
    }else {
      Map data = {
        'id': id.value,
        'booking_id': bookingId.value,
        'payee_name': clientName.value.text,
        'p_relation': relation.value.text,
        'p_mobile_no': mobile.value.text,
        'p_email_id': email.value.text,
        'p_pan_no': pan.value.text,
        'p_aadhar_no': aadhaar.value.text,
        'p_hno': pyHouseNo.value.text,
        'p_street': pyColony.value.text,
        'p_landmark': pyLandmark.value.text,
        'p_city': pyCity.value.text,
        'p_state': pyState.value.text,
        'p_pincode': pyPin.value.text,
        'create_by':login.read("id").toString(),
      };
      //debugPrint(data.toString());


      loading.value = true;
      // loadingFullPage.loading.value = true;
      _api.payee(data).then((value) {
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

