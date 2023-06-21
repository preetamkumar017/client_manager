
import 'package:client_booking/data/network/network_api_services.dart';
import 'package:client_booking/models/home/dashboard_model.dart';
import 'package:client_booking/res/app_url/app_url.dart';

class DashboardRepository {
  final _apiService = NetworkApiServices();

  Future<DashboardModel> dashboardDetails(data) async {
    try {
      dynamic response = await _apiService.postApi(data,AppUrl.dashboard);
      return response = DashboardModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}