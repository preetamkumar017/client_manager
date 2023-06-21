
import 'package:client_booking/data/response/status.dart';
import 'package:client_booking/models/home/dashboard_model.dart';
import 'package:client_booking/models/home/profile_model.dart';
import 'package:client_booking/repository/home_repository/dashboard_repository.dart';
import 'package:client_booking/repository/home_repository/profile_repository.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view_models/services/box_storage.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
{


  final _api = ProfileRepository();

  RxBool loading = false.obs;

  final rxRequestStatus = Status.LOADING.obs ;
  final profileDetails =ProfileModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value ;
  void setProfileDetails(ProfileModel value) => profileDetails.value = value ;
  void setError(String value) => error.value = value ;

  void getData()
  {
    Map data = {
      'id':login.read("id")
    };
    loading.value = true ;
    setRxRequestStatus(Status.LOADING);
    _api.profileDetails(data).then((value) {
      print(value.toJson().toString());
      if(value.code == 200)
      {
        setProfileDetails(value);
      }else
        {
          Utils.toastMessage("Data Not Found");
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