
import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/models/home/dashboard_model.dart';
import 'package:client_manager/repository/home_repository/dashboard_repository.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController
{


  final _api = DashboardRepository();

  RxBool loading = false.obs;

  final rxRequestStatus = Status.LOADING.obs ;
  final dashboardDetails =DashboardModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value ;
  void setDashboardDetails(DashboardModel value) => dashboardDetails.value = value ;
  void setError(String value) => error.value = value ;

  void getData()
  {
    Map data = {
      'id':login.read("id")
    };
    debugPrint(data.toString());
    loading.value = true ;
    setRxRequestStatus(Status.LOADING);
    _api.dashboardDetails(data).then((value) {
      if(value.code == 200)
      {
        setDashboardDetails(value);
      }
      loading.value = false ;
      setRxRequestStatus(Status.COMPLETED);
    }).onError((error, stackTrace) {
      setError(error.toString());
      loading.value = false ;
      setRxRequestStatus(Status.ERROR);
    });
  }
}