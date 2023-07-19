
import 'dart:developer';

import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/models/booking_model/booking_details_model.dart';
import 'package:client_manager/repository/booking_repository/booking_details_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingDetailsController extends GetxController
{

  final _api = BookingDetailsRepository();


  final rxRequestStatus = Status.LOADING.obs ;
  final bookingDetails  = BookingDetailsModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value ;
  void setBookingDetails(BookingDetailsModel value) => bookingDetails.value = value ;
  void setError(String value) => error.value = value ;


  Future<void> bookingDetailsApi(String id)async {
    debugPrint("called"+id);
     setRxRequestStatus(Status.LOADING);

    _api.bookingDetails(id).then((value){
      log(value.toJson().toString());
      setRxRequestStatus(Status.COMPLETED);
      setBookingDetails(value);
      // debugPrint(value.result!.attachDoc!.toJson().toString());
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }





}