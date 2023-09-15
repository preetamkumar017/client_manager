import 'dart:developer';
import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/models/booking_model/AgreementListModel.dart';
import 'package:client_manager/models/booking_model/booking_list_model.dart';
import 'package:client_manager/repository/agreement_repository/agreement_repository.dart';
import 'package:client_manager/repository/booking_repository/booking_list_repository.dart';
import 'package:get/get.dart';

class AgreementController extends GetxController
{

  final _api = AgreementRepository();


  final rxRequestStatus = Status.LOADING.obs ;
  final agreementList =AgreementListModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(AgreementListModel _value) => agreementList.value = _value ;
  void setError(String _value) => error.value = _value ;


  Future<void> agreementListApi()async {
    setRxRequestStatus(Status.LOADING);

    _api.agreementList().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }


}