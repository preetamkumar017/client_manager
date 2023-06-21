
import 'package:client_booking/repository/booking_repository/booking_form_repository.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view_models/controller/booking/booking_form1_controller.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_booking/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController
{

  final clintInfo = Get.find<ClientInfoController>();
  final loadingFullPage = Get.find<BookingForm1Controller>();

  RxBool loading = false.obs;
  final _api = BookingFormRepository();
  final anyOffer      = TextEditingController().obs ;
  final discountRate  = TextEditingController().obs ;
  final amount        = TextEditingController().obs ;
  final inWords       = TextEditingController().obs ;
  final nonRefundable = TextEditingController().obs ;
  // final upi           = TextEditingController().obs ;
  final paymentLink      = TextEditingController().obs ;
  // final chequeNo      = TextEditingController().obs ;
  // final chequeDate    = TextEditingController().obs ;
  final selfAmount    = TextEditingController().obs ;
  final bankName      = TextEditingController().obs ;
  final loanAmount    = TextEditingController().obs ;
  final loanAccount   = TextEditingController().obs ;

  RxString quotationRate = "".obs;
  RxString paymentMode = "".obs;
  RxString fundingMode = "".obs;


  RxBool isUpi = false.obs;
  RxBool isNeft = false.obs;
  RxBool isCards = false.obs;
  RxBool isCheque = false.obs;

  RxBool nextPage = false.obs;

  void submit()
  {

    if(nonRefundable.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter non-Refundable Amount");
      nextPage.value = false;
    }
    else{
      nextPage.value = true;
    Map data = {
      "booking_id":clintInfo.lastId.value,
      "offer_amt":anyOffer.value.text,
      "quotation_type":quotationRate.value,
      "final_rate":discountRate.value.text,
      "final_amt":amount.value.text,
      "final_amt_in_word":inWords.value.text,
      "paid_booking_amt":nonRefundable.value.text,
      "payment_mode":paymentMode.value.replaceAll('/', '_'),
      // "upi_id":upi.value.text,
      // "cheque_no":chequeNo.value.text,
      // "cheque_data":chequeDate.value.text,
      "payment_link":paymentLink.value.text,
      "funding_mode":fundingMode.value,
      "self_amt":selfAmount.value.text,
      "bank_name":bankName.value.text,
      "loan_amt":loanAmount.value.text,
      "loan_acc_no":loanAccount.value.text,
      'create_by':login.read("id").toString(),
    };

      loading.value = true;
      loadingFullPage.loading.value = true;
      _api.transactionDetails(data).then((value) {
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


class TransactionEditController extends GetxController
{

  RxBool loading = false.obs;
  final _api = BookingFormRepository();



  final anyOffer      = TextEditingController().obs ;
  final discountRate  = TextEditingController().obs ;
  final amount        = TextEditingController().obs ;
  final inWords       = TextEditingController().obs ;
  final nonRefundable = TextEditingController().obs ;
  // final upi           = TextEditingController().obs ;
  final paymentLink      = TextEditingController().obs ;
  // final chequeNo      = TextEditingController().obs ;
  // final chequeDate    = TextEditingController().obs ;
  final selfAmount    = TextEditingController().obs ;
  final bankName      = TextEditingController().obs ;
  final loanAmount    = TextEditingController().obs ;
  final loanAccount   = TextEditingController().obs ;

  RxString quotationRate = "".obs;
  RxString paymentMode = "".obs;
  RxString fundingMode = "".obs;

  RxString bookingId = "".obs;
  RxString id = "".obs;

  RxList<String> quotationTypeList = <String>[].obs;
  RxList<String> fundingModeList = <String>[].obs;
  RxList<String> paymentModeList = <String>[].obs;

  RxBool isUpi = false.obs;
  RxBool isNeft = false.obs;
  RxBool isCards = false.obs;
  RxBool isCheque = false.obs;

  void submit()
  {
    if(nonRefundable.value.text==""){
      Utils.snackBar("Filed not found", "Please Enter non-Refundable Amount");
    }
    else {
      Map data = {
        "id": id.value,
        "booking_id": bookingId.value,
        "offer_amt": anyOffer.value.text,
        "quotation_type": quotationRate.value,
        "final_rate": discountRate.value.text,
        "final_amt": amount.value.text,
        "final_amt_in_word": inWords.value.text,
        "paid_booking_amt": nonRefundable.value.text,
        "payment_mode": paymentMode.value.replaceAll('/', '_'),
        // "upi_id": upi.value.text,
        // "cheque_no": chequeNo.value.text,
        // "cheque_data": chequeDate.value.text,
        "payment_link": paymentLink.value.text,
        "funding_mode": fundingMode.value,
        "self_amt": selfAmount.value.text,
        "bank_name": bankName.value.text,
        "loan_amt": loanAmount.value.text,
        "loan_acc_no": loanAccount.value.text,
        'create_by':login.read("id").toString(),
      };

      //debugPrint(data.toString());


      loading.value = true;
      // loadingFullPage.loading.value = true;
      _api.transactionDetails(data).then((value) {
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