import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/booking_model/booking_list_model.dart';
import 'package:client_manager/models/booking_model/result_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';

class BookingListRepository
{

  final _apiService  = NetworkApiServices() ;


  Future<BookingListModel> bookingList() async{
    try {
      dynamic response = await _apiService.getApi( AppUrl.bookingList);
      return response = BookingListModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }


  Future<ResultModel> delete(dynamic data) async{
    try {
      dynamic response = await _apiService.postApi(data, AppUrl.deleteBooking);
      return response = ResultModel.fromJson(response);
    }catch(e)
    {
      rethrow ;
    }
  }
}