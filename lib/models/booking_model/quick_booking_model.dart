class QuickBookingModel {
  String? status;
  int? code;
  String? message;
  int? lastId;

  QuickBookingModel({this.status, this.code, this.message, this.lastId});

  QuickBookingModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    lastId = json['last_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    data['last_id'] = lastId;
    return data;
  }
}
