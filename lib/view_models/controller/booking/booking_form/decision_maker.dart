
import 'package:client_manager/repository/booking_repository/booking_form_repository.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view_models/controller/booking/booking_form1_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DecisionMakerController extends GetxController
{
  final _api = BookingFormRepository();

  final clintInfo = Get.find<ClientInfoController>();
  final loadingFullPage = Get.find<BookingForm1Controller>();



  final clientName = TextEditingController().obs ;
  final relation = TextEditingController().obs ;
  final mobile = TextEditingController().obs ;
  final email = TextEditingController().obs ;
  final pan = TextEditingController().obs ;
  final aadhaar = TextEditingController().obs ;
  final dMHouseNo = TextEditingController().obs ;
  final dMColony = TextEditingController().obs ;
  final dMLandmark = TextEditingController().obs ;
  final dMCity = TextEditingController().obs ;
  final dMState = TextEditingController().obs ;
  final dMPin = TextEditingController().obs ;

  RxBool dmSameAsClient = false.obs;
  RxBool loading = false.obs;
  RxBool nextPage = false.obs;


  dmSameAsClientAdd( newVal)
  {
    dmSameAsClient.value = newVal ;

    if(newVal)
    {
      clientName.value.text = clintInfo.clientName.value.text;
      relation.value.text   = "self";
      mobile.value.text     = clintInfo.mobile.value.text ;
      email.value.text      = clintInfo.email.value.text ;
      pan.value.text        = clintInfo.pan.value.text ;
      aadhaar.value.text    = clintInfo.aadhaar.value.text ;
      dMHouseNo.value.text  = clintInfo.presentHouseNo.value.text ;
      dMColony.value.text   = clintInfo.presentColony.value.text ;
      dMLandmark.value.text = clintInfo.presentLandmark.value.text ;
      dMCity.value.text     = clintInfo.presentCity.value.text ;
      dMState.value.text    = clintInfo.presentCity.value.text ;
      dMPin.value.text      = clintInfo.presentPin.value.text ;
    }else
    {
      clientName.value.text = "";
      relation.value.text = "";
      mobile.value.text = "";
      email.value.text = "";
      pan.value.text = "";
      aadhaar.value.text = "";
      dMHouseNo.value.text = "";
      dMColony.value.text = "";
      dMLandmark.value.text = "";
      dMCity.value.text = "";
      dMState.value.text = "";
      dMPin.value.text = "";
    }

  }

  void save()
  {
    if(clientName.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter Name");
      nextPage.value = false;
    }
    else{
      nextPage.value = true;
      Map data = {
        'booking_id': clintInfo.lastId.value,
        'dm_name': clientName.value.text,
        'd_relation': relation.value.text,
        'd_mobile_no': mobile.value.text,
        'd_email_id': email.value.text,
        'd_pan_no': pan.value.text,
        'd_aadhar_no': aadhaar.value.text,
        'd_hno': dMHouseNo.value.text,
        'd_street': dMColony.value.text,
        'd_landmark': dMLandmark.value.text,
        'd_city': dMCity.value.text,
        'd_state': dMState.value.text,
        'd_pincode': dMPin.value.text,
        'create_by':login.read("id").toString(),
      };
      loading.value = true;
      loadingFullPage.loading.value = true;
      _api.decisionMaker(data).then((value) {
        if (value.code == 200) {
          Utils.toastMessage("Data Added Successfully");
        }
        loading.value = false;
        loadingFullPage.loading.value = false;
      }).onError((error, stackTrace) {
        loading.value = false;
        loadingFullPage.loading.value = false;
      });
    }
  }

}


class DecisionMakerEditController extends GetxController
{
  final _api = BookingFormRepository();

  final clientName = TextEditingController().obs ;
  final relation = TextEditingController().obs ;
  final mobile = TextEditingController().obs ;
  final email = TextEditingController().obs ;
  final pan = TextEditingController().obs ;
  final aadhaar = TextEditingController().obs ;
  final dMHouseNo = TextEditingController().obs ;
  final dMColony = TextEditingController().obs ;
  final dMLandmark = TextEditingController().obs ;
  final dMCity = TextEditingController().obs ;
  final dMState = TextEditingController().obs ;
  final dMPin = TextEditingController().obs ;

  RxString id = "".obs;
  RxString bookingId = "".obs;
  RxBool dmSameAsClient = false.obs;

  RxBool loading = false.obs;

  void save()
  {

    if(clientName.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter Name");
    }else {
      Map data = {
        'id': id.value,
        'booking_id': bookingId.value,
        'dm_name': clientName.value.text,
        'd_relation': relation.value.text,
        'd_mobile_no': mobile.value.text,
        'd_email_id': email.value.text,
        'd_pan_no': pan.value.text,
        'd_aadhar_no': aadhaar.value.text,
        'd_hno': dMHouseNo.value.text,
        'd_street': dMColony.value.text,
        'd_landmark': dMLandmark.value.text,
        'd_city': dMCity.value.text,
        'd_state': dMState.value.text,
        'd_pincode': dMPin.value.text,
        'create_by':login.read("id").toString(),
      };

      loading.value = true;
      // loadingFullPage.loading.value = true;
      _api.decisionMaker(data).then((value) {
        if (value.code == 200) {
          Fluttertoast.showToast(msg: "added");
          Get.back(result: true, canPop: true);
        } else if (value.code == 201) {
          Get.back(result: true, canPop: true);
          //debugPrint("clichgj");
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