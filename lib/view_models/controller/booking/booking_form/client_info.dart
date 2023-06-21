
import 'dart:developer';
import 'dart:io';

import 'package:client_booking/repository/booking_repository/booking_form_repository.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view/booking/tabs/client_info_tab.dart';
import 'package:client_booking/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ClientInfoController extends GetxController
{
  final _api = BookingFormRepository();

  final formKey = GlobalKey<FormState>().obs;
  RxBool isFormEnabled = false.obs;


  RxBool tabs = true.obs;



  final clientName = TextEditingController().obs ;
  final fathersName = TextEditingController().obs ;
  final age = TextEditingController().obs ;
  final occupation = TextEditingController().obs ;
  final mobile = TextEditingController().obs ;
  final email = TextEditingController().obs ;
  final pan = TextEditingController().obs ;
  final aadhaar = TextEditingController().obs ;
  final permanentHouseNo = TextEditingController().obs ;
  final permanentColony = TextEditingController().obs ;
  final permanentLandmark = TextEditingController().obs ;
  final permanentCity = TextEditingController().obs ;
  final permanentState = TextEditingController().obs ;
  final permanentPin = TextEditingController().obs ;

  final presentHouseNo = TextEditingController().obs ;
  final presentColony = TextEditingController().obs ;
  final presentLandmark = TextEditingController().obs ;
  final presentCity = TextEditingController().obs ;
  final presentState = TextEditingController().obs ;
  final presentPin = TextEditingController().obs ;
  final officeHouseNo = TextEditingController().obs ;
  final officeColony = TextEditingController().obs ;
  final officeLandmark = TextEditingController().obs ;
  final officeCity = TextEditingController().obs ;
  final officeState = TextEditingController().obs ;
  final officePin = TextEditingController().obs ;

  RxBool presentSameAsPermanent = false.obs;
  RxBool officeSameAsPermanent = false.obs;
  RxBool officeSameAsPresent = false.obs;
  RxString gender = "".obs ;

  RxBool exist = false.obs;

  RxString bookingAmount  = "".obs;

  final clientNameFocusNode = FocusNode().obs ;
  final fathersNameFocusNode = FocusNode().obs ;
  final ageFocusNode = FocusNode().obs ;
  final occupationFocusNode = FocusNode().obs ;
  final mobileFocusNode = FocusNode().obs ;
  final emailFocusNode = FocusNode().obs ;
  final panFocusNode = FocusNode().obs ;
  final aadhaarFocusNode = FocusNode().obs ;
  final permanentHouseNoFocusNode = FocusNode().obs ;
  final permanentColonyFocusNode = FocusNode().obs ;
  final permanentLandmarkFocusNode = FocusNode().obs ;
  final permanentCityFocusNode = FocusNode().obs ;
  final permanentStateFocusNode = FocusNode().obs ;
  final permanentPinFocusNode = FocusNode().obs ;
  final presentHouseNoFocusNode = FocusNode().obs ;
  final presentColonyFocusNode = FocusNode().obs ;
  final presentLandmarkFocusNode = FocusNode().obs ;
  final presentCityFocusNode = FocusNode().obs ;
  final presentStateFocusNode = FocusNode().obs ;
  final presentPinFocusNode = FocusNode().obs ;
  final officeHouseNoFocusNode = FocusNode().obs ;
  final officeColonyFocusNode = FocusNode().obs ;
  final officeLandmarkFocusNode = FocusNode().obs ;
  final officeCityFocusNode = FocusNode().obs ;
  final officeStateFocusNode = FocusNode().obs ;
  final officePinFocusNode = FocusNode().obs ;

  RxString lastId = "".obs;

  RxBool loading = false.obs;


  presentSameAsPermanentAddress( newVal)
  {
    presentSameAsPermanent.value = newVal ;
    if(newVal)
      {
        presentHouseNo.value.text = permanentHouseNo.value.text;
        presentColony.value.text = permanentColony.value.text;
        presentLandmark.value.text = permanentLandmark.value.text;
        presentCity.value.text = permanentCity.value.text;
        presentState.value.text = permanentState.value.text;
        presentPin.value.text = permanentPin.value.text;
      }else
        {
          presentHouseNo.value.text = "";
          presentColony.value.text = "";
          presentLandmark.value.text = "";
          presentCity.value.text = "";
          presentState.value.text = "";
          presentPin.value.text = "";
        }

  }
  officeSameAsPermanentAddress( newVal)
  {
    officeSameAsPermanent.value = newVal ;
    if(newVal)
    {
      officeSameAsPresent.value= false;
      officeHouseNo.value.text = permanentHouseNo.value.text;
      officeColony.value.text = permanentColony.value.text;
      officeLandmark.value.text = permanentLandmark.value.text;
      officeCity.value.text = permanentCity.value.text;
      officeState.value.text = permanentState.value.text;
      officePin.value.text = permanentPin.value.text;
    }else
    {
      officeHouseNo.value.text = "";
      officeColony.value.text = "";
      officeLandmark.value.text = "";
      officeCity.value.text = "";
      officeState.value.text = "";
      officePin.value.text = "";
    }

  }
  officeSameAsPresentAddress( newVal)
  {
    officeSameAsPresent.value = newVal ;
    if(newVal)
    {
      officeSameAsPermanent.value = false;
      officeHouseNo.value.text  = presentHouseNo.value.text ;
      officeColony.value.text   = presentColony.value.text ;
      officeLandmark.value.text = presentLandmark.value.text ;
      officeCity.value.text = presentCity.value.text ;
      officeState.value.text    = presentState.value.text ;
      officePin.value.text  = presentPin.value.text ;
    }else
    {
      officeHouseNo.value.text = "";
      officeColony.value.text = "";
      officeLandmark.value.text = "";
      officeCity.value.text = "";
      officeState.value.text = "";
      officePin.value.text = "";
    }
  }


  void submit()
  {

    if (clientName.value.text == "") {
      Utils.snackBar("Field not found", "Please enter Name");
    } else if (mobile.value.text == "") {
      Utils.snackBar("Field not found", "Please enter Mobile Number");
    } else if (!isValidMobile(mobile.value.text)) {
      Utils.snackBar("Invalid Mobile Number", "Please enter a valid 10-digit Mobile Number");
    } else if (email.value.text == "") {
      Utils.snackBar("Field not found", "Please enter Email");
    } else if (!isValidEmail(email.value.text)) {
      Utils.snackBar("Invalid Email", "Please enter a valid Email");
    } else if (pan.value.text == "") {
      Utils.snackBar("Field not found", "Please enter PAN Number");
    } else if (!isValidPAN(pan.value.text)) {
      Utils.snackBar("Invalid PAN Number", "Please enter a valid PAN Number");
    } else if (aadhaar.value.text == "") {
      Utils.snackBar("Field not found", "Please enter Aadhaar Number");
    } else if (!isValidAadhaar(aadhaar.value.text)) {
      Utils.snackBar("Invalid Aadhaar Number", "Please enter a valid Aadhaar Number");
    } else if (permanentHouseNo.value.text == "" || permanentColony.value.text == "" || permanentCity.value.text == "" ||
        permanentState.value.text == "" || permanentPin.value.text == "") {
      Utils.snackBar("Field(s) not found", "Please enter all Permanent Address details");
    } else if (presentHouseNo.value.text == "" || presentColony.value.text == "" || presentCity.value.text == "" ||
        presentState.value.text == "" || presentPin.value.text == "") {
      Utils.snackBar("Field(s) not found", "Please enter all Present Address details");
    } else if (officeHouseNo.value.text == "" || officeColony.value.text == "" || officeCity.value.text == "" ||
        officeState.value.text == "" || officePin.value.text == "") {
      Utils.snackBar("Field(s) not found", "Please enter all Office Address details");
    }else
    {
      Map data = {
        'req_type': 'android',
        'bid': lastId.value,
        'client_name': clientName.value.text,
        'spouse_name': fathersName.value.text,
        'age': age.value.text,
        'gender': gender.value,
        'mobile_no': mobile.value.text,
        'email_id': email.value.text,
        'pan_no': pan.value.text,
        'aadhar_no': aadhaar.value.text,
        'occupation': occupation.value.text,
        "p_hno": permanentHouseNo.value.text,
        "p_street": permanentColony.value.text,
        "p_landmark": permanentLandmark.value.text,
        "p_city": permanentCity.value.text,
        "p_state": permanentState.value.text,
        "p_pincode": permanentPin.value.text,
        "r_hno": presentHouseNo.value.text,
        "r_street": presentColony.value.text,
        "r_landmark": presentLandmark.value.text,
        "r_city": presentCity.value.text,
        "r_state": presentState.value.text,
        "r_pincode": presentPin.value.text,
        "o_hno": officeHouseNo.value.text,
        "o_street": officeColony.value.text,
        "o_landmark": officeLandmark.value.text,
        "o_city": officeCity.value.text,
        "o_state": officeState.value.text,
        "o_pincode": officePin.value.text,
        'booking_amt': bookingAmount.value,
        'create_by':login.read("id").toString(),
      };
      loading.value = true;
      // loadingFullPage.loading.value = true;
      debugPrint(data.toString());
      _api.bookingFormAdd(data).then((value) {
        debugPrint(value.toJson().toString());

        if (value.code == 200) {
          tabs.value = false;
          isFormEnabled.value = true;
          lastId.value = value.message.toString();

          Utils.toastMessage("Successfully Added Please Update");
          // Get.back(result: true, canPop: true);
        } else if (value.code == 201) {
          debugPrint("message");
          // Get.back(result: true, canPop: true);
        } else if (value.code == 202) {
          Utils.snackBar("Mobile Number Already Exist", "Please Check on Booking List");
        }
        loading.value = false;
        // loadingFullPage.loading.value = false;
      }).onError((error, stackTrace) {
        loading.value = false;
        // loadingFullPage.loading.value = false;
      });
    }
  }
  bool isValidMobile(String mobileNumber) {
    // Regular expression pattern for mobile number validation
    RegExp mobileRegex = RegExp(r'^[0-9]{10}$');

    // Check if the mobileNumber matches the pattern
    return mobileRegex.hasMatch(mobileNumber);
  }

  bool isValidEmail(String email) {
    // Regular expression pattern for email validation
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    // Check if the email matches the pattern
    return emailRegex.hasMatch(email);
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