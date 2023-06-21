import 'dart:developer';
import 'package:client_booking/data/response/status.dart';
import 'package:client_booking/models/booking_model/booking_list_model.dart';
import 'package:client_booking/repository/booking_repository/booking_list_repository.dart';
import 'package:get/get.dart';

class BookingListController extends GetxController
{

  final _api = BookingListRepository();


  final rxRequestStatus = Status.LOADING.obs ;
  final bookingList =BookingListModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(BookingListModel _value) => bookingList.value = _value ;
  void setError(String _value) => error.value = _value ;


  Future<void> bookingListApi()async {
    //  setRxRequestStatus(Status.LOADING);

    _api.bookingList().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }

  Future<void> bookingDeleteApi(String id)async {
     setRxRequestStatus(Status.LOADING);
    Map data = {
      'id':id,
      "source":"bkf_booking_form"
    };
    log(data.toString());

    _api.delete(data).then((value){
      log(value.toJson().toString());
      setRxRequestStatus(Status.COMPLETED);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }



}