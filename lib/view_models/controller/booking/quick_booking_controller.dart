import 'dart:developer';

import 'package:client_manager/repository/booking_repository/quick_booking_repository.dart';
import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:client_manager/models/booking_model/client_data_calc_model.dart';

class QuickBookingController extends GetxController {
  Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;
  final _repo = QuickBookingRepository();
  final clientName = TextEditingController().obs;
  final mobile = TextEditingController().obs;
  final email = TextEditingController().obs;
  final aadhaarCard = TextEditingController().obs;
  final panCard = TextEditingController().obs;
  final paymentLink = TextEditingController().obs;

  String get getClientName => clientName.value.text;
  String get getMobile => mobile.value.text;
  String get getEmail => email.value.text;
  String get getAadhaarCard => aadhaarCard.value.text;
  String get getPanCard => panCard.value.text;
  String get getPaymentLink => paymentLink.value.text;

  Rx<Result> result = Result().obs;
  get getResult => result.value;
  setResult(Result data) => result.value = data;

  RxList planList = ['Plan 1 \nRs 3,00,000', 'Plan 2 \n35% of Estimate Cost'].obs;
  get getPlanList => planList.value;


  RxString plan = "".obs;
  get getPlan => plan.value;
  setPlan(String data,String cost) {
    // plan.value = data;
    if (data == getPlanList[0]) {
      plan.value = "300000";
    } else {
      plan.value = ((int.parse(cost) /100) * 35).toString();
    }
  }
  RxString bid = "".obs;
  get getBid => bid.value;
  setBid(String data)=> bid.value = data;

  RxString calcId = "".obs;
  get getCalcId => calcId.value;
  setCalcId(String data)=> calcId.value = data;

  Rx<Booking> book = Booking.payNow.obs;
  RxBool loading = false.obs;
  get getLoading => loading.value;
  setLoading(bool data)=> loading.value=data;
  

  void  submit()
  {
    setLoading(true);
    if (aadhaarCard.value.text == "") {
      Utils.snackBar("Field not found", "Please enter Aadhaar Number");
      } else if (!isValidAadhaar(aadhaarCard.value.text)) {
      Utils.snackBar("Invalid Aadhaar Number", "Please enter a valid Aadhaar Number");
    }else if (panCard.value.text == "") {
      Utils.snackBar("Field not found", "Please enter PAN Number");
    } else if (!isValidPAN(panCard.value.text.toUpperCase())) {
      Utils.snackBar("Invalid PAN Number", "Please enter a valid PAN Number");
    }
    else{
      var id = login.read("id");
      Map<String, String> data = {
        "login_id": id.toString(),
        "bid": bid.value,
        "calc_id": calcId.value,
        "booking_amt": plan.value,
        "client_name": clientName.value.text,
        "mobile_no": mobile.value.text,
        "email_id": email.value.text,
        "pan_no": panCard.value.text,
        "aadhar_no": aadhaarCard.value.text,
        "booking_link": paymentLink.value.text,
      };
      log(data.toString());
      _repo.quickBooking(data).then((value) {
        debugPrint(value.toJson().toString());
        Future.delayed(Duration(seconds: 2));
        if (value.code == 200) {
          Utils.toastMessage("Booking Added Successfully");
          setBid(value.lastId.toString());
          afterBooking();
        } else if (value.code == 202) {
          Utils.toastMessage("Booking Updated Successfully");
          setBid(value.lastId.toString());
          afterBooking();
        } else {
          Utils.toastMessage("Something Wants Wrong");
        }
      }).onError((error, stackTrace) {
        setLoading(false);
        debugPrint(error.toString());
      });
    }
  }
  void afterBooking()
  {
    if(book == Booking.payNow)
    {
      Utils.toastMessage("pay now");
      Map data = {
        "booking_id": bid.value,
        "amount":plan.value,
        "calc_id":calcId.value,
        "payment_link":paymentLink.value.text,
      };

      Get.toNamed(RouteName.payNowView,arguments: data);
    }else
      {
        Map data1 = {
        "booking_id": bid.value,
        "mail_type":"link",
      };
        Utils.toastMessage("Send Link");
        _repo.sendMail(data1).then((value) {
          log(value.toJson().toString());
          if(value.code==200)
            {
              Utils.toastMessage("Mail Successfully");
              Map data = {
                "booking_id": bid.value,
                "amount":plan.value,
                "calc_id":calcId.value,
                "payment_link":paymentLink.value.text,
              };
              Get.toNamed(RouteName.payNowView,arguments: data);
            }else
              {
                Utils.toastMessage("Mail Failure");
              }

          setLoading(false);
        }).onError((error, stackTrace) {
          log(error.toString());

          setLoading(false);
          Utils.toastMessage(error.toString());
        });
      }
  }

  bool isValidPAN(String panNumber) {
    // Regular expression pattern for PAN number validation
    RegExp panRegex = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');

    // Check if the panNumber matches the pattern
    return panRegex.hasMatch(panNumber);
  }

  bool isValidAadhaar(String aadhaarNumber) {
    // Regular expression pattern for Aadhaar number validation
    RegExp aadhaarRegex = RegExp(r'^\d{12}$');

    // Check if the aadhaarNumber matches the pattern
    return aadhaarRegex.hasMatch(aadhaarNumber);
  }

}
enum Booking{sendLink,payNow}
