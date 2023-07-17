
import 'package:client_manager/data/network/network_api_services.dart';
import 'package:client_manager/models/home/dashboard_model.dart';
import 'package:client_manager/models/home/profile_model.dart';
import 'package:client_manager/res/app_url/app_url.dart';

class ProfileRepository {
  final _apiService = NetworkApiServices();

  Future<ProfileModel> profileDetails(data) async {
    try {
      dynamic response = await _apiService.postApi(data,AppUrl.profile);
      return response = ProfileModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}