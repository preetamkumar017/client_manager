import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class PayNowController extends GetxController
{
  RxMap screenData = {}.obs;
  get getScreenData => screenData.value;
  setScreenData(Map value) => screenData.value = value;

  RxString bid = "".obs;
  get getBid => bid.value;
  setBid(String value) => bid.value = value;

  RxString amount = "".obs;
  get getAmount => amount.value;
  setAmount(String value) => amount.value = value;

  RxString calcId = "".obs;
  get getCalcId => calcId.value;
  setCalcId(String value) => calcId.value =value;

  RxString link = "".obs;
  get getLink => link.value;
  setLink(String value) => link.value =value;


  RxBool upi = true.obs;
  get getUpi => upi.value;
  setUpi(bool value) => upi.value = value;


  signScreenData()
  {
    setBid(screenData['booking_id'].toString());
    setAmount(screenData['amount'].toString());
    setCalcId(screenData['calc_id'].toString());
    setLink(screenData['payment_link'].toString());
  }
}