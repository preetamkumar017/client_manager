import 'dart:developer';

import 'package:client_booking/data/network/network_api_services.dart';
import 'package:client_booking/models/booking_model/result_model.dart';
import 'package:client_booking/res/app_url/app_url.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class BookingFormRepository
{
  final _apiService  = NetworkApiServices();
  Future<ResultModel> bookingFormAdd(var data) async{
    debugPrint(data.toString());
    debugPrint(AppUrl.ajaxClientInfoUrl.toString());
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.ajaxClientInfoUrl);
      debugPrint(response.toString());
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


  Future<ResultModel> decisionMaker(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.ajaxDecisionMaker);
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


  Future<ResultModel> payee(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.ajaxClientPayee);
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }

  Future<ResultModel> transactionDetails(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.ajaxBookingTransaction);
      //debugPrint(response.toString());
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }

  Future<ResultModel> plotDetails(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.ajaxPlotDetails);
      //debugPrint(response.toString());
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


  Future<ResultModel> attachFiles(var data, List<http.MultipartFile> files) async{
    try {
      dynamic response = await _apiService.getPostWithFormDataApiResponse(files,data, AppUrl.ajaxAttachedDocument);
      //debugPrint(response.toString());
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }

}