class DashboardModel {
  String? status;
  int? code;
  String? message;
  BookingDetails? bookingDetails;
  AgreementDetails? agreementDetails;
  String? name;

  DashboardModel(
      {this.status,
        this.code,
        this.message,
        this.bookingDetails,
        this.agreementDetails,
        this.name});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    bookingDetails = json['booking_details'] != null
        ? new BookingDetails.fromJson(json['booking_details'])
        : null;
    agreementDetails = json['agreement_details'] != null
        ? new AgreementDetails.fromJson(json['agreement_details'])
        : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.bookingDetails != null) {
      data['booking_details'] = this.bookingDetails!.toJson();
    }
    if (this.agreementDetails != null) {
      data['agreement_details'] = this.agreementDetails!.toJson();
    }
    data['name'] = this.name;
    return data;
  }
}

class BookingDetails {
  String? bamt;
  String? bkngTotal;

  BookingDetails({this.bamt, this.bkngTotal});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    bamt = json['bamt'];
    bkngTotal = json['bkng_total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bamt'] = this.bamt;
    data['bkng_total'] = this.bkngTotal;
    return data;
  }
}

class AgreementDetails {
  String? totalAggrementAmt;
  String? totalRowCount;

  AgreementDetails({this.totalAggrementAmt, this.totalRowCount});

  AgreementDetails.fromJson(Map<String, dynamic> json) {
    totalAggrementAmt = json['total_aggrement_amt'];
    totalRowCount = json['total_row_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_aggrement_amt'] = this.totalAggrementAmt;
    data['total_row_count'] = this.totalRowCount;
    return data;
  }
}
