
import 'dart:developer';

import 'package:client_manager/repository/booking_repository/booking_form_repository.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_manager/view_models/controller/booking/booking_form1_controller.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
class AttachDocumentsController extends GetxController
{
  RxBool loading = false.obs;
  final _api = BookingFormRepository();

  RxBool aadhaar = false.obs;
  RxBool pan = false.obs;
  RxBool bill = false.obs;
  RxBool registry = false.obs;
  RxBool b1 = false.obs;
  RxBool khasra = false.obs;
  RxBool tncp = false.obs;
  RxBool tax = false.obs;
  RxBool other = false.obs;



  Rx<XFile?> aadhaarFile = Rx<XFile?>(null);
  Rx<XFile?> panFile = Rx<XFile?>(null);
  Rx<XFile?> billFile = Rx<XFile?>(null);
  Rx<XFile?> registryFile = Rx<XFile?>(null);
  Rx<XFile?> b1File = Rx<XFile?>(null);
  Rx<XFile?> khasraFile = Rx<XFile?>(null);
  Rx<XFile?> tncpFile = Rx<XFile?>(null);
  Rx<XFile?> taxFile = Rx<XFile?>(null);
  Rx<XFile?> otherFile = Rx<XFile?>(null);

  final clintInfo = Get.find<ClientInfoController>();
  final loadingFullPage = Get.find<BookingForm1Controller>();

  List<http.MultipartFile> images = [];

  final otherTC = TextEditingController().obs ;

  Future<void> submit()
  async {
    Map<String,String> data = {
      'booking_id':clintInfo.lastId.value,
      'chk_adhar_copy':aadhaar.value.toString() ,
      'chk_pancard_copy':pan.value.toString() ,
      'chk_electric_bill':bill.value.toString() ,
      'chk_registry_copy':registry.value.toString() ,
      'chk_b_one_copy':b1.value.toString() ,
      'chk_khasra_map':khasra.value.toString() ,
      'chk_approved_tncp':tncp.value.toString() ,
      'chk_tax_receipt':tax.value.toString() ,
      'chk_any_other':other.value.toString() ,
      'other_name':otherTC.value.text.toString() ,
      'create_by':login.read("id").toString()
    };
    images = [];
    if(aadhaarFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('adhar_copy', aadhaarFile.value?.path ?? ""));
    }

    if(panFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('pancard_copy', panFile.value?.path ?? ""));
    }


    if(billFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('electric_bill', billFile.value?.path ?? ""));
    }

    if(registryFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('registry_copy', registryFile.value?.path ?? ""));
    }

    if(b1File.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('b_one_copy', b1File.value?.path ?? ""));
    }

    if(khasraFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('khasra_map', khasraFile.value?.path ?? ""));
    }

    if(tncpFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('approved_tncp', tncpFile.value?.path ?? ""));
    }

    if(taxFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('tax_receipt', taxFile.value?.path ?? ""));
    }

    if(otherFile.value!=null)
    {
      images.add(await http.MultipartFile.fromPath('any_other', otherFile.value?.path ?? ""));
    }
    // Utils.snackBar("clicked", "message");

    loading.value = true ;
    loadingFullPage.loading.value = true;
    _api.attachFiles(data,images).then((value) {
      if(value.code == 200)
      {
        // Utils.snackBar("title", "message");
        // Utils.snackBar("process", "message");

      }else
        {
          // Utils.snackBar("else part", "message");

        }

      loading.value = false ;
      loadingFullPage.loading.value = false;


    }).onError((error, stackTrace) {
      loading.value = false ;
      loadingFullPage.loading.value = false;

    });

    // Utils.snackBar("end", "message");





  }



}

class AttachDocumentsEditController extends GetxController
{
  RxBool loading = false.obs;
  final _api = BookingFormRepository();

  RxBool aadhaar = false.obs;
  RxBool pan = false.obs;
  RxBool bill = false.obs;
  RxBool registry = false.obs;
  RxBool b1 = false.obs;
  RxBool khasra = false.obs;
  RxBool tncp = false.obs;
  RxBool tax = false.obs;
  RxBool other = false.obs;



  RxString bookingId = "".obs;
  RxString id = "".obs;



  Rx<XFile?> aadhaarFile = Rx<XFile?>(null);
  Rx<XFile?> panFile = Rx<XFile?>(null);
  Rx<XFile?> billFile = Rx<XFile?>(null);
  Rx<XFile?> registryFile = Rx<XFile?>(null);
  Rx<XFile?> b1File = Rx<XFile?>(null);
  Rx<XFile?> khasraFile = Rx<XFile?>(null);
  Rx<XFile?> tncpFile = Rx<XFile?>(null);
  Rx<XFile?> taxFile = Rx<XFile?>(null);
  Rx<XFile?> otherFile = Rx<XFile?>(null);


  final otherTC = TextEditingController().obs ;


  List<http.MultipartFile> images = [];

  Future<void> submit()
  async {
    Map<String,String> data = {
      'id':id.value,
      'booking_id':bookingId.value,
      'create_by':login.read("id").toString(),
    };

    images = [];
    if(aadhaarFile.value!=null)
    {
      data.addAll({'chk_adhar_copy':aadhaar.value.toString()});
      images.add(await http.MultipartFile.fromPath('adhar_copy', aadhaarFile.value?.path ?? ""));
    }

    if(panFile.value!=null)
    {
      data.addAll({'chk_pancard_copy':pan.value.toString() });
      images.add(await http.MultipartFile.fromPath('pancard_copy', panFile.value?.path ?? ""));
    }


    if(billFile.value!=null)
    {
      data.addAll({'chk_electric_bill':bill.value.toString()});
      images.add(await http.MultipartFile.fromPath('electric_bill', billFile.value?.path ?? ""));
    }

    if(registryFile.value!=null)
    {
      data.addAll({'chk_registry_copy':registry.value.toString()});
      images.add(await http.MultipartFile.fromPath('registry_copy', registryFile.value?.path ?? ""));
    }

    if(b1File.value!=null)
    {
      data.addAll({'chk_b_one_copy':b1.value.toString()});
      //debugPrint(b1File.value?.path ?? "");
      images.add(await http.MultipartFile.fromPath('b_one_copy', b1File.value?.path ?? ""));

    }

    if(khasraFile.value!=null)
    {
      data.addAll({'chk_khasra_map':khasra.value.toString()});
      images.add(await http.MultipartFile.fromPath('khasra_map', khasraFile.value?.path ?? ""));
    }

    if(tncpFile.value!=null)
    {
      data.addAll({'chk_approved_tncp':tncp.value.toString()});
      images.add(await http.MultipartFile.fromPath('approved_tncp', tncpFile.value?.path ?? ""));
    }

    if(taxFile.value!=null)
    {
      data.addAll({ 'chk_tax_receipt':tax.value.toString()});
      images.add(await http.MultipartFile.fromPath('tax_receipt', taxFile.value?.path ?? ""));
    }

    if(otherFile.value!=null)
    {
      data.addAll({
        'chk_any_other':other.value.toString(),
        'other_name':otherTC.value.text.toString() });
      images.add(await http.MultipartFile.fromPath('any_other', otherFile.value?.path ?? ""));
    }
    loading.value = true ;
    debugPrint(data.toString());
    _api.attachFiles(data,images).then((value) async {
      if(value.code == 200)
      {
        Utils.toastMessage("Files uploaded successfully...");
        Get.back(result: true,canPop: true);
      }else if(value.code == 201)
      {
        Utils.toastMessage("Files uploaded successfully...");
        Get.back(result: true,canPop: true);
      }
      loading.value = false ;
    }).onError((error, stackTrace) {
      loading.value = false ;
    });
  }



}