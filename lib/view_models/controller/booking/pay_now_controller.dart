
import 'package:client_manager/repository/booking_repository/quick_booking_repository.dart';
import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PayNowController extends GetxController
{
  final _repo = QuickBookingRepository();
  Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;

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

  Rx<TextEditingController> tranceId = TextEditingController().obs;
  get getTranceId => tranceId.value.text;

  RxStatus loading = RxStatus.empty();
  get getLoading => loading;
  setLoading(RxStatus data)=> loading=data;


  signScreenData()
  {
    setBid(screenData['booking_id'].toString());
    setAmount(screenData['amount'].toString());
    setCalcId(screenData['calc_id'].toString());
    setLink(screenData['payment_link'].toString());
  }

  submit()
  {
    setLoading(RxStatus.loading());
      Map<String,String> data = {
        "booking_id":getBid.toString(),
        "trans_id":getTranceId,
        "paid_booking_amt":getAmount.toString(),
        "payment_mode":getUpi ? "Upi" : "Online",
      };
      // log(data.toString());

    _repo.quickTransaction(data).then((value){
      // debugPrint(value.toJson().toString());
      if(value.code == 200)
      {
        Utils.toastMessage("Transaction Added Successfully");
        Get.offNamed(RouteName.dashboardView);
      }else
      {
        Utils.toastMessage("Something Wants Wrong");
      }
      setLoading(RxStatus.success());
    }).onError((error, stackTrace) {
      setLoading(RxStatus.error());
      debugPrint(error.toString());
    });

  }
}