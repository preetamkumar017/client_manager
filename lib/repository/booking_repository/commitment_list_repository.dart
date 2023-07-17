import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/booking_model/commitment_list_model.dart';
import 'package:client_manager/models/booking_model/get_commitment_model.dart';
import 'package:client_manager/models/booking_model/result_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';
import 'package:flutter/material.dart';

class CommitmentListRepository {
  final _apiService = NetworkApiServices();
  Future<CommitmentListModel> commitmentList() async {
    try {
      dynamic response = await _apiService.getApi(AppUrl.commitmentList);
      // debugPrint(response.toString());
       response = CommitmentListModel.fromJson(response);
       // debugPrint(response.toString());
      return response;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }


  Future<ResultModel> addCommitment(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.addCommitment);
      debugPrint(response.toString());
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


  Future<GetCommitmentModel> getCommitment(var data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.commitment);
      debugPrint(response.toString());
      return response = GetCommitmentModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }
}