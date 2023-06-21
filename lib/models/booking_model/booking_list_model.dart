class BookingListModel {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  BookingListModel({this.status, this.code, this.message, this.result});

  BookingListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(Result.fromJson(v));
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
  String? bookingAmt;
  String? clientName;
  String? spouseName;
  String? age;
  String? gender;
  String? mobileNo;
  String? emailId;
  String? panNo;
  String? aadharNo;
  String? occupation;
  String? permanentAddr;
  String? presentAddr;
  String? officeAddr;
  String? createBy;
  String? status;
  String? createDate;
  String? updateDate;
  String? ip;
  String? finalAmt;

  Result(
      { this.id,
        this.bookingAmt,
        this.clientName,
        this.spouseName,
        this.age,
        this.gender,
        this.mobileNo,
        this.emailId,
        this.panNo,
        this.aadharNo,
        this.occupation,
        this.permanentAddr,
        this.presentAddr,
        this.officeAddr,
        this.createBy,
        this.status,
        this.createDate,
        this.updateDate,
        this.ip,
        this.finalAmt});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingAmt = json['booking_amt'];
    clientName = json['client_name'];
    spouseName = json['spouse_name'];
    age = json['age'];
    gender = json['gender'];
    mobileNo = json['mobile_no'];
    emailId = json['email_id'];
    panNo = json['pan_no'];
    aadharNo = json['aadhar_no'];
    occupation = json['occupation'];
    permanentAddr = json['permanent_addr'];
    presentAddr = json['present_addr'];
    officeAddr = json['office_addr'];
    createBy = json['create_by'];
    status = json['status'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
    finalAmt = json['final_amt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['booking_amt'] = bookingAmt;
    data['client_name'] = clientName;
    data['spouse_name'] = spouseName;
    data['age'] = age;
    data['gender'] = gender;
    data['mobile_no'] = mobileNo;
    data['email_id'] = emailId;
    data['pan_no'] = panNo;
    data['aadhar_no'] = aadharNo;
    data['occupation'] = occupation;
    data['permanent_addr'] = permanentAddr;
    data['present_addr'] = presentAddr;
    data['office_addr'] = officeAddr;
    data['create_by'] = createBy;
    data['status'] = status;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    data['final_amt'] = finalAmt;
    return data;
  }
}
