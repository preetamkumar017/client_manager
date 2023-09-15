import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/booking_model/quick_booking_model.dart';
import 'package:client_manager/models/booking_model/result_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';
import 'package:flutter/material.dart';

class QuickBookingRepository
{

  final _apiService = NetworkApiServices();

  Future<QuickBookingModel> quickBooking(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.quickBooking);
      debugPrint(response.toString());
      return response = QuickBookingModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }
  Future<QuickBookingModel> quickTransaction(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.quickTransaction);
      debugPrint(response.toString());
      return response = QuickBookingModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }

  Future<ResultModel> sendMail(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.sendMail);
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


}