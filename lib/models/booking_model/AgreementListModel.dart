class AgreementListModel {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  AgreementListModel({this.status, this.code, this.message, this.result});

  AgreementListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? bookingId;
  String? clientName;
  String? mobileNo;
  String? aggrementDate;
  String? finalAmt;
  String? aggrementAmt;
  String? workStartOn;
  String? compPeriod;

  Result(
      {this.bookingId,
        this.clientName,
        this.mobileNo,
        this.aggrementDate,
        this.finalAmt,
        this.aggrementAmt,
        this.workStartOn,
        this.compPeriod});

  Result.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    clientName = json['client_name'];
    mobileNo = json['mobile_no'];
    aggrementDate = json['aggrement_date'];
    finalAmt = json['final_amt'];
    aggrementAmt = json['aggrement_amt'];
    workStartOn = json['work_start_on'];
    compPeriod = json['comp_period'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['client_name'] = this.clientName;
    data['mobile_no'] = this.mobileNo;
    data['aggrement_date'] = this.aggrementDate;
    data['final_amt'] = this.finalAmt;
    data['aggrement_amt'] = this.aggrementAmt;
    data['work_start_on'] = this.workStartOn;
    data['comp_period'] = this.compPeriod;
    return data;
  }
}
