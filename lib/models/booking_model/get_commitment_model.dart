class GetCommitmentModel {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  GetCommitmentModel({this.status, this.code, this.message, this.result});

  GetCommitmentModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? id;
  String? bookingId;
  String? commitment;
  String? aggrPeriod;
  String? compPeriod;
  String? workStartOn;
  String? sba;
  String? estCost;
  String? createDate;
  String? updateDate;
  String? ip;

  Result(
      {this.id,
        this.bookingId,
        this.commitment,
        this.aggrPeriod,
        this.compPeriod,
        this.workStartOn,
        this.sba,
        this.estCost,
        this.createDate,
        this.updateDate,
        this.ip});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    commitment = json['commitment'];
    aggrPeriod = json['aggr_period'];
    compPeriod = json['comp_period'];
    workStartOn = json['work_start_on'];
    sba = json['sba'];
    estCost = json['est_cost'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['commitment'] = commitment;
    data['aggr_period'] = aggrPeriod;
    data['comp_period'] = compPeriod;
    data['work_start_on'] = workStartOn;
    data['sba'] = sba;
    data['est_cost'] = estCost;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}
