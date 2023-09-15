import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/booking_model/AgreementListModel.dart';
import 'package:client_manager/models/booking_model/booking_list_model.dart';
import 'package:client_manager/models/booking_model/result_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';

class AgreementRepository
{

  final _apiService  = NetworkApiServices() ;


  Future<AgreementListModel> agreementList() async{
    try {
      dynamic response = await _apiService.getApi( AppUrl.anubadhAgreementList);
      return response = AgreementListModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


}