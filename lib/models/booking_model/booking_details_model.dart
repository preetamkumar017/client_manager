class BookingDetailsModel {
  String? status;
  int? code;
  Result? result;

  BookingDetailsModel({this.status, this.code, this.result});

  BookingDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    result =
    json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['code'] = code;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  ClientInfo? clientInfo;
  DecMaker? decMaker;
  Payee? payee;
  TransDetail? transDetail;
  PlotDetail? plotDetail;
  AttachDoc? attachDoc;

  Result(
      {this.clientInfo,
        this.decMaker,
        this.payee,
        this.transDetail,
        this.plotDetail,
        this.attachDoc});

  Result.fromJson(Map<String, dynamic> json) {
    clientInfo = json['client_info'] != null
        ? ClientInfo.fromJson(json['client_info'])
        : null;
    decMaker = json['dec_maker'] != null
        ? DecMaker.fromJson(json['dec_maker'])
        : null;
    payee = json['payee'] != null ? Payee.fromJson(json['payee']) : null;
    transDetail = json['trans_detail'] != null
        ? TransDetail.fromJson(json['trans_detail'])
        : null;
    plotDetail = json['plot_detail'] != null
        ? PlotDetail.fromJson(json['plot_detail'])
        : null;
    attachDoc = json['attach_doc'] != null
        ? AttachDoc.fromJson(json['attach_doc'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (clientInfo != null) {
      data['client_info'] = clientInfo!.toJson();
    }
    if (decMaker != null) {
      data['dec_maker'] = decMaker!.toJson();
    }
    if (payee != null) {
      data['payee'] = payee!.toJson();
    }
    if (transDetail != null) {
      data['trans_detail'] = transDetail!.toJson();
    }
    if (plotDetail != null) {
      data['plot_detail'] = plotDetail!.toJson();
    }
    if (attachDoc != null) {
      data['attach_doc'] = attachDoc!.toJson();
    }
    return data;
  }
}

class ClientInfo {
  String? id;
  String? bookingAmt;
  String? clientName;
  String? calcId;
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
  String? clientReview;
  String? bookingFile;
  String? status;
  String? createDate;
  String? updateDate;
  String? ip;
  String? clientVerify;
  String? clientVerifyDate;
  String? marketingVerify;
  String? marketingVerifyDate;
  String? adminVerify;
  String? adminVerifyDate;
  String? bookingTimer;
  String? bookingVerifyTimer;
  String? transVerify;
  String? transVerifyDate;
  String? transVerifyBy;
  String? linkRequest;
  String? bookingLink;
  String? aggrementStatus;
  String? aggrementDate;

  ClientInfo(
      {this.id,
        this.bookingAmt,
        this.clientName,
        this.calcId,
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
        this.clientReview,
        this.bookingFile,
        this.status,
        this.createDate,
        this.updateDate,
        this.ip,
        this.clientVerify,
        this.clientVerifyDate,
        this.marketingVerify,
        this.marketingVerifyDate,
        this.adminVerify,
        this.adminVerifyDate,
        this.bookingTimer,
        this.bookingVerifyTimer,
        this.transVerify,
        this.transVerifyDate,
        this.transVerifyBy,
        this.linkRequest,
        this.bookingLink,
        this.aggrementStatus,
        this.aggrementDate});

  ClientInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingAmt = json['booking_amt'];
    clientName = json['client_name'];
    calcId = json['calc_id'];
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
    clientReview = json['client_review'];
    bookingFile = json['booking_file'];
    status = json['status'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
    clientVerify = json['client_verify'];
    clientVerifyDate = json['client_verify_date'];
    marketingVerify = json['marketing_verify'];
    marketingVerifyDate = json['marketing_verify_date'];
    adminVerify = json['admin_verify'];
    adminVerifyDate = json['admin_verify_date'];
    bookingTimer = json['booking_timer'];
    bookingVerifyTimer = json['booking_verify_timer'];
    transVerify = json['trans_verify'];
    transVerifyDate = json['trans_verify_date'];
    transVerifyBy = json['trans_verify_by'];
    linkRequest = json['link_request'];
    bookingLink = json['booking_link'];
    aggrementStatus = json['aggrement_status'];
    aggrementDate = json['aggrement_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['booking_amt'] = bookingAmt;
    data['client_name'] = clientName;
    data['calc_id'] = calcId;
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
    data['client_review'] = clientReview;
    data['booking_file'] = bookingFile;
    data['status'] = status;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    data['client_verify'] = clientVerify;
    data['client_verify_date'] = clientVerifyDate;
    data['marketing_verify'] = marketingVerify;
    data['marketing_verify_date'] = marketingVerifyDate;
    data['admin_verify'] = adminVerify;
    data['admin_verify_date'] = adminVerifyDate;
    data['booking_timer'] = bookingTimer;
    data['booking_verify_timer'] = bookingVerifyTimer;
    data['trans_verify'] = transVerify;
    data['trans_verify_date'] = transVerifyDate;
    data['trans_verify_by'] = transVerifyBy;
    data['link_request'] = linkRequest;
    data['booking_link'] = bookingLink;
    data['aggrement_status'] = aggrementStatus;
    data['aggrement_date'] = aggrementDate;
    return data;
  }
}

class DecMaker {
  String? id;
  String? bookingId;
  String? dName;
  String? dRelation;
  String? dMobileNo;
  String? dEmailId;
  String? dPanNo;
  String? dAadharNo;
  String? dAddr;
  String? status;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? ip;

  DecMaker(
      {this.id,
        this.bookingId,
        this.dName,
        this.dRelation,
        this.dMobileNo,
        this.dEmailId,
        this.dPanNo,
        this.dAadharNo,
        this.dAddr,
        this.status,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.ip});

  DecMaker.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    dName = json['d_name'];
    dRelation = json['d_relation'];
    dMobileNo = json['d_mobile_no'];
    dEmailId = json['d_email_id'];
    dPanNo = json['d_pan_no'];
    dAadharNo = json['d_aadhar_no'];
    dAddr = json['d_addr'];
    status = json['status'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['d_name'] = dName;
    data['d_relation'] = dRelation;
    data['d_mobile_no'] = dMobileNo;
    data['d_email_id'] = dEmailId;
    data['d_pan_no'] = dPanNo;
    data['d_aadhar_no'] = dAadharNo;
    data['d_addr'] = dAddr;
    data['status'] = status;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}

class Payee {
  String? id;
  String? bookingId;
  String? payeeName;
  String? pRelation;
  String? pMobileNo;
  String? pEmailId;
  String? pPanNo;
  String? pAadharNo;
  String? pAddr;
  String? status;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? ip;

  Payee(
      {this.id,
        this.bookingId,
        this.payeeName,
        this.pRelation,
        this.pMobileNo,
        this.pEmailId,
        this.pPanNo,
        this.pAadharNo,
        this.pAddr,
        this.status,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.ip});

  Payee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    payeeName = json['payee_name'];
    pRelation = json['p_relation'];
    pMobileNo = json['p_mobile_no'];
    pEmailId = json['p_email_id'];
    pPanNo = json['p_pan_no'];
    pAadharNo = json['p_aadhar_no'];
    pAddr = json['p_addr'];
    status = json['status'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['payee_name'] = payeeName;
    data['p_relation'] = pRelation;
    data['p_mobile_no'] = pMobileNo;
    data['p_email_id'] = pEmailId;
    data['p_pan_no'] = pPanNo;
    data['p_aadhar_no'] = pAadharNo;
    data['p_addr'] = pAddr;
    data['status'] = status;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}

class TransDetail {
  String? id;
  String? bookingId;
  String? offerAmt;
  String? quotationType;
  String? finalRate;
  String? finalAmt;
  String? finalAmtInWord;
  String? paidBookingAmt;
  String? paymentMode;
  String? upiId;
  String? chequeNo;
  String? chequeData;
  String? transId;
  String? paymentLink;
  String? fundingMode;
  String? selfAmt;
  String? loanAmt;
  String? loanAccNo;
  String? bankName;
  String? chkAccept;
  String? paymentDate;
  String? paymentVerifyDate;
  String? paymentStatus;
  String? paymentVerifyBy;
  String? aggrementAmt;
  String? aggrPaymentMode;
  String? aggrTransId;
  String? aggrPaymentDate;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? ip;

  TransDetail(
      {this.id,
        this.bookingId,
        this.offerAmt,
        this.quotationType,
        this.finalRate,
        this.finalAmt,
        this.finalAmtInWord,
        this.paidBookingAmt,
        this.paymentMode,
        this.upiId,
        this.chequeNo,
        this.chequeData,
        this.transId,
        this.paymentLink,
        this.fundingMode,
        this.selfAmt,
        this.loanAmt,
        this.loanAccNo,
        this.bankName,
        this.chkAccept,
        this.paymentDate,
        this.paymentVerifyDate,
        this.paymentStatus,
        this.paymentVerifyBy,
        this.aggrementAmt,
        this.aggrPaymentMode,
        this.aggrTransId,
        this.aggrPaymentDate,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.ip});

  TransDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    offerAmt = json['offer_amt'];
    quotationType = json['quotation_type'];
    finalRate = json['final_rate'];
    finalAmt = json['final_amt'];
    finalAmtInWord = json['final_amt_in_word'];
    paidBookingAmt = json['paid_booking_amt'];
    paymentMode = json['payment_mode'];
    upiId = json['upi_id'];
    chequeNo = json['cheque_no'];
    chequeData = json['cheque_data'];
    transId = json['trans_id'];
    paymentLink = json['payment_link'];
    fundingMode = json['funding_mode'];
    selfAmt = json['self_amt'];
    loanAmt = json['loan_amt'];
    loanAccNo = json['loan_acc_no'];
    bankName = json['bank_name'];
    chkAccept = json['chk_accept'];
    paymentDate = json['payment_date'];
    paymentVerifyDate = json['payment_verify_date'];
    paymentStatus = json['payment_status'];
    paymentVerifyBy = json['payment_verify_by'];
    aggrementAmt = json['aggrement_amt'];
    aggrPaymentMode = json['aggr_payment_mode'];
    aggrTransId = json['aggr_trans_id'];
    aggrPaymentDate = json['aggr_payment_date'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['offer_amt'] = offerAmt;
    data['quotation_type'] = quotationType;
    data['final_rate'] = finalRate;
    data['final_amt'] = finalAmt;
    data['final_amt_in_word'] = finalAmtInWord;
    data['paid_booking_amt'] = paidBookingAmt;
    data['payment_mode'] = paymentMode;
    data['upi_id'] = upiId;
    data['cheque_no'] = chequeNo;
    data['cheque_data'] = chequeData;
    data['trans_id'] = transId;
    data['payment_link'] = paymentLink;
    data['funding_mode'] = fundingMode;
    data['self_amt'] = selfAmt;
    data['loan_amt'] = loanAmt;
    data['loan_acc_no'] = loanAccNo;
    data['bank_name'] = bankName;
    data['chk_accept'] = chkAccept;
    data['payment_date'] = paymentDate;
    data['payment_verify_date'] = paymentVerifyDate;
    data['payment_status'] = paymentStatus;
    data['payment_verify_by'] = paymentVerifyBy;
    data['aggrement_amt'] = aggrementAmt;
    data['aggr_payment_mode'] = aggrPaymentMode;
    data['aggr_trans_id'] = aggrTransId;
    data['aggr_payment_date'] = aggrPaymentDate;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}

class PlotDetail {
  String? id;
  String? bookingId;
  String? plotLocation;
  String? plotTahsil;
  String? plotDistrict;
  String? plotNo;
  String? plotSize;
  String? khasraNo;
  String? phNo;
  String? plotFacing;
  String? numRoad;
  String? plotDepth;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? ip;

  PlotDetail(
      {this.id,
        this.bookingId,
        this.plotLocation,
        this.plotTahsil,
        this.plotDistrict,
        this.plotNo,
        this.plotSize,
        this.khasraNo,
        this.phNo,
        this.plotFacing,
        this.numRoad,
        this.plotDepth,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.ip});

  PlotDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    plotLocation = json['plot_location'];
    plotTahsil = json['plot_tahsil'];
    plotDistrict = json['plot_district'];
    plotNo = json['plot_no'];
    plotSize = json['plot_size'];
    khasraNo = json['khasra_no'];
    phNo = json['ph_no'];
    plotFacing = json['plot_facing'];
    numRoad = json['num_road'];
    plotDepth = json['plot_depth'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['plot_location'] = plotLocation;
    data['plot_tahsil'] = plotTahsil;
    data['plot_district'] = plotDistrict;
    data['plot_no'] = plotNo;
    data['plot_size'] = plotSize;
    data['khasra_no'] = khasraNo;
    data['ph_no'] = phNo;
    data['plot_facing'] = plotFacing;
    data['num_road'] = numRoad;
    data['plot_depth'] = plotDepth;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}

class AttachDoc {
  String? id;
  String? bookingId;
  String? chkAdharCopy;
  String? adharCopy;
  String? chkPancardCopy;
  String? pancardCopy;
  String? chkElectricBill;
  String? electricBill;
  String? chkRegistryCopy;
  String? registryCopy;
  String? chkBOneCopy;
  String? bOneCopy;
  String? chkKhasraMap;
  String? khasraMap;
  String? chkApprovedTncp;
  String? approvedTncp;
  String? chkTaxReceipt;
  String? taxReceipt;
  String? anyOther;
  String? chkAnyOther;
  String? otherName;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? ip;

  AttachDoc(
      {this.id,
        this.bookingId,
        this.chkAdharCopy,
        this.adharCopy,
        this.chkPancardCopy,
        this.pancardCopy,
        this.chkElectricBill,
        this.electricBill,
        this.chkRegistryCopy,
        this.registryCopy,
        this.chkBOneCopy,
        this.bOneCopy,
        this.chkKhasraMap,
        this.khasraMap,
        this.chkApprovedTncp,
        this.approvedTncp,
        this.chkTaxReceipt,
        this.taxReceipt,
        this.anyOther,
        this.chkAnyOther,
        this.otherName,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.ip});

  AttachDoc.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    chkAdharCopy = json['chk_adhar_copy'];
    adharCopy = json['adhar_copy'];
    chkPancardCopy = json['chk_pancard_copy'];
    pancardCopy = json['pancard_copy'];
    chkElectricBill = json['chk_electric_bill'];
    electricBill = json['electric_bill'];
    chkRegistryCopy = json['chk_registry_copy'];
    registryCopy = json['registry_copy'];
    chkBOneCopy = json['chk_b_one_copy'];
    bOneCopy = json['b_one_copy'];
    chkKhasraMap = json['chk_khasra_map'];
    khasraMap = json['khasra_map'];
    chkApprovedTncp = json['chk_approved_tncp'];
    approvedTncp = json['approved_tncp'];
    chkTaxReceipt = json['chk_tax_receipt'];
    taxReceipt = json['tax_receipt'];
    anyOther = json['any_other'];
    chkAnyOther = json['chk_any_other'];
    otherName = json['other_name'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['chk_adhar_copy'] = chkAdharCopy;
    data['adhar_copy'] = adharCopy;
    data['chk_pancard_copy'] = chkPancardCopy;
    data['pancard_copy'] = pancardCopy;
    data['chk_electric_bill'] = chkElectricBill;
    data['electric_bill'] = electricBill;
    data['chk_registry_copy'] = chkRegistryCopy;
    data['registry_copy'] = registryCopy;
    data['chk_b_one_copy'] = chkBOneCopy;
    data['b_one_copy'] = bOneCopy;
    data['chk_khasra_map'] = chkKhasraMap;
    data['khasra_map'] = khasraMap;
    data['chk_approved_tncp'] = chkApprovedTncp;
    data['approved_tncp'] = approvedTncp;
    data['chk_tax_receipt'] = chkTaxReceipt;
    data['tax_receipt'] = taxReceipt;
    data['any_other'] = anyOther;
    data['chk_any_other'] = chkAnyOther;
    data['other_name'] = otherName;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}
