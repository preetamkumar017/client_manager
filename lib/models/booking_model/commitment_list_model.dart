class CommitmentListModel {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  CommitmentListModel({this.status, this.code, this.message, this.result});

  CommitmentListModel.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? commitment;
  String? creatDate;
  String? updateDate;
  String? ip;

  Result({this.id, this.commitment, this.creatDate, this.updateDate, this.ip});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    commitment = json['commitment'];
    creatDate = json['creat_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['commitment'] = this.commitment;
    data['creat_date'] = this.creatDate;
    data['update_date'] = this.updateDate;
    data['ip'] = this.ip;
    return data;
  }
}
