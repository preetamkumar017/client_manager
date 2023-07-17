import 'dart:developer';

import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/booking_model/booking_details_model.dart';
import 'package:client_manager/models/booking_model/client_data_calc_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';
import 'package:flutter/material.dart';

class BookingDetailsRepository {
  final _apiService = NetworkApiServices();

  Future<BookingDetailsModel> bookingDetails(String id) async {
    try {
      dynamic response = await _apiService.getApi("${AppUrl.bookingDetails}/$id");
      // log("repository: "+response.toString());
      return response = BookingDetailsModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
  Future<ClientDataCalcModel> getDataFromCalc(dynamic data) async {
    try {
      dynamic response = await _apiService.postApi(data,AppUrl.dataFromCalc);
      // log("repository: "+response.toString());
      return response = ClientDataCalcModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

}
