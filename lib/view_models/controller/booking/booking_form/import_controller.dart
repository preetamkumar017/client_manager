import 'dart:developer';

import 'package:client_booking/data/response/status.dart';
import 'package:client_booking/models/booking_model/client_data_calc_model.dart';
import 'package:client_booking/repository/booking_repository/booking_details_repository.dart';
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/view/booking/booking_form_view.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/plot_details.dart';
import 'package:client_booking/view_models/controller/booking/booking_form1_controller.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ImportController  extends  GetxController
{
  final _apiRepository = BookingDetailsRepository();
  final  importText  = TextEditingController();

  RxString name = "".obs;
  RxString mobile = "".obs;
  RxString address = "".obs;

  final rxRequestStatus = Status.LOADING.obs ;
  final clientData = ClientDataCalcModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(ClientDataCalcModel _value) => clientData.value = _value ;
  void setError(String _value) => error.value = _value ;

  Rx<ClientDataCalcModel> calcData = ClientDataCalcModel().obs;
  get getCalcData => calcData;
  void setCalcData(ClientDataCalcModel _value) => calcData.value = _value;

  void getData(String mobile,context)
  {
    setRxRequestStatus(Status.LOADING);
    Map data = {
      "client_mob":mobile,
    };
    _apiRepository.getDataFromCalc(data).then((value) {
      setRxRequestStatus(Status.COMPLETED);

      if(value.code==200)
        {
          // log(value.result.toString());
          setUserList(value);
          assignValue();

          Navigator.of(context).pop();
          Get.toNamed(RouteName.bookingForm1);
        }else
          {
            CoolAlert.show(
              context: context,
              type: CoolAlertType.info,
              text: "No Data Found!",
              title: "Please Change ",
            );

          }
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
    });
  }

  final  bookingForm1 = Get.put(BookingForm1Controller());
  final  clientInfo = Get.put(ClientInfoController());
  final  plotDetails = Get.put(PlotDetailsController());

  assignValue()
  {
    bookingForm1.amount33p.value = (int.parse(clientData.value.result![0].totalCost!) / 35)
                                  .toStringAsFixed(2)
                                  .toString();
    clientInfo.clientName.value.text = clientData.value.result![0].clientName!;
    clientInfo.mobile.value.text = clientData.value.result![0].clientMob!;

    plotDetails.location.value.text = clientData.value.result![0].clientAddr!;
    plotDetails.plotSize.value.text = clientData.value.result![0].totalArea!;
    plotDetails.depth.value.text = clientData.value.result![0].depth!;
    switch(clientData.value.result![0].roadFacing!.toString())
    {
      case "1":
        {
          plotDetails.roadss.value = "One";
          break;
        }
      case "2":
        {
          plotDetails.roadss.value = "Two";
          break;
        }
      case "3":
        {
          plotDetails.roadss.value = "Three";
          break;
        }
    }
    plotDetails.roads.value = clientData.value.result![0].roadFacing!;
    log(bookingForm1.amount33p.value);
  }


  Future<void> getDataFromCalc(String mobile,context)
  async {
    setRxRequestStatus(Status.LOADING);
    Map data = {
      "client_mob":mobile,
    };
    _apiRepository.getDataFromCalc(data).then((value) {
      setRxRequestStatus(Status.COMPLETED);

      if(value.code==200)
      {
        // log(value.result.toString());
        setCalcData(value);
        // assignValue();

         name.value = value.result![0].clientName ?? "";
         this.mobile.value = mobile;
         address.value = value.result![0].clientAddr ?? "";
        Navigator.of(context).pop();
        Get.toNamed(RouteName.costListView);
      }else
      {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.info,
          text: "No Data Found!",
          title: "Please Change Mobile Number",
        );

      }
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
      setError(error.toString());
    });
  }
}