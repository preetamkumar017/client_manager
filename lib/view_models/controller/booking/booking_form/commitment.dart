import 'dart:developer';

import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/models/booking_model/commitment_list_model.dart';
import 'package:client_manager/models/booking_model/get_commitment_model.dart';
import 'package:client_manager/repository/booking_repository/commitment_list_repository.dart';
import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CommitmentController extends GetxController
{
  final _api = CommitmentListRepository();
  late RxList<RxBool> _checkboxList;

  RxString bookingId = "".obs;
  final rxRequestStatusAdd = Status.LOADING.obs ;

  final agreementPeriod = TextEditingController().obs ;
  final completionPeriod = TextEditingController().obs ;
  final workOnSite = TextEditingController().obs ;


  final agreementPeriodFocusNode = FocusNode().obs ;
  final workOnSiteFocusNode = FocusNode().obs ;
  final completionPeriodFocusNode = FocusNode().obs ;


  @override
  void onClose() {
    agreementPeriod.value.dispose();
    completionPeriod.value.dispose();
    workOnSite.value.dispose();

    agreementPeriodFocusNode.value.dispose();
    workOnSiteFocusNode.value.dispose();
    completionPeriodFocusNode.value.dispose();
    super.onClose();
  }



  void assign(length)
  {
    _checkboxList = RxList<RxBool>.filled(length, false.obs);
  }
  RxList<RxBool> get checkboxList => _checkboxList;


  setCheckboxValue(int index, bool value) {
    _checkboxList[index] = value.obs;
    // update();
  }

  final rxRequestStatus= Status.LOADING.obs ;
  final commitmentList =CommitmentListModel().obs ;
  final commitment     =GetCommitmentModel().obs ;
  RxString error       = ''.obs;
  RxBool loading       = false.obs;

  void setRxRequestStatusAdd(Status _value) => rxRequestStatusAdd.value = _value ;
  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setCommitmentList(CommitmentListModel _value) => commitmentList.value = _value ;
  void setError(String _value) => error.value = _value ;


  void setCommitment(GetCommitmentModel _value) => commitment.value = _value ;

  Future<void> getCommitList() async {
    setRxRequestStatus(Status.LOADING);
    _api.commitmentList().then((value) {
      debugPrint(value.toString());
      if(value.code==200)
        {
          assign(value.result!.length);
          setCommitmentList(value);
        }else
          {
            setError(value.message.toString());
          }

      setRxRequestStatus(Status.COMPLETED);
    }).onError((error, stackTrace)
    {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
    });
  }

  void submit()
  {
    setRxRequestStatusAdd(Status.LOADING);
    loading.value= true;
    String id = "";
    for(int i = 0;i<commitmentList.value.result!.length;i++)
    {
      if(checkboxList[i].value)
      {
        if(id=="")
        {
          id = "${commitmentList.value.result![i].id}";
        }else
        {
          id = "$id,${commitmentList.value.result![i].id}";
        }
      }
    }

    Map data = <String,String>{
      'booking_id':bookingId.value,
      'commitment':id,
      'aggr_period':agreementPeriod.value.text,
      'comp_period':completionPeriod.value.text,
      'work_start_on':workOnSite.value.text,
      'create_by':login.read("id").toString(),
    };
    debugPrint(data.toString());
    _api.addCommitment(data).then((value) {

      if(value.code == 200)
        {
          Fluttertoast.showToast(msg: "Commitment Successfully Added");
          Get.back();
        }else if(value.code == 201)
          {
            Fluttertoast.showToast(msg: "Successfully Updated");
            Get.back();
          }else if(value.code == 409)
          {
            Fluttertoast.showToast(msg: "commitment already exist");
          }else
            {
            }
      setRxRequestStatusAdd(Status.COMPLETED);
      loading.value= false;
    }).onError((error, stackTrace) {
      setRxRequestStatusAdd(Status.ERROR);
      loading.value= false;
      Fluttertoast.showToast(msg: error.toString());
    });


  agreementPeriod.value.text = "";
  completionPeriod.value.text = "";
  workOnSite.value.text = "";
  }

  void check()
  {
    setRxRequestStatusAdd(Status.LOADING);
    loading.value= true;

    Map data = <String,String>{
      'booking_id':bookingId.value,
    };
    debugPrint(data.toString());
    _api.getCommitment(data).then((value) {

      if(value.code == 200)
      {
        setCommitment(value);
        Fluttertoast.showToast(msg: "Commitment Successfully Fetched");
        Get.toNamed(RouteName.commitmentEdit);
      }else
      {
        Get.toNamed(RouteName.commitment);
      }
      setRxRequestStatusAdd(Status.COMPLETED);
      loading.value= false;
    }).onError((error, stackTrace) {
      setRxRequestStatusAdd(Status.ERROR);
      loading.value= false;
      Fluttertoast.showToast(msg: error.toString());
    });

  }

}