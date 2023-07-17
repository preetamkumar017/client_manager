import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/booking_model/result_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';

class LoginRepository {

  final _apiService  = NetworkApiServices() ;


  Future<ResultModel> loginApi(var data) async{
    try{
      dynamic response = await _apiService.postApi(data, AppUrl.login);
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
    rethrow ;
    }
  }



}