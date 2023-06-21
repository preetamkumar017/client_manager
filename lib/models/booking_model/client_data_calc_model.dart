class ClientDataCalcModel {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  ClientDataCalcModel({this.status, this.code, this.message, this.result});

  ClientDataCalcModel.fromJson(Map<String, dynamic> json) {
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
  String? calcType;
  String? clientName;
  String? clientMob;
  String? clientAddr;
  String? length;
  String? width;
  String? depth;
  String? totalArea;
  String? floorNum;
  String? workArea;
  String? floorSqPrice;
  String? floorDiscPrice;
  String? totalFDisc;
  String? totalWorkArea;
  String? avgCost;
  String? totalFloorCost;
  String? roadFacing;
  String? rftRate;
  String? bwallHeight;
  String? bwallArea;
  String? bwallCost;
  String? openArea;
  String? openAreaType;
  String? openAreaCost;
  String? elevType;
  String? elevRate;
  String? elevRateStr;
  String? elevCost;
  String? elevCostStr;
  String? totalCost;
  String? stankRate;
  String? isMkitchen;
  String? stankArea;
  String? stankCost;
  String? isStank;
  String? isWtank;
  String? wtankRate;
  String? wtankArea;
  String? wtankCost;
  String? extraPlinthCost;
  String? floorFcelingCost;
  String? sumFcelingCost;
  String? isFceling;
  String? mkitchenCost;
  String? floorStr;
  String? eStr;
  String? tataSteel;
  String? jindalSteel;
  String? jindalBricks;
  String? marble;
  String? woodenLook;
  String? photoFrame;
  String? noPhotoFrame;
  String? compTime;
  String? expBrick;
  String? frameType;
  String? toiletType;
  String? addToilet;
  String? floorStrength;
  String? toiletQty;
  String? additionalCost;
  String? totalDiscCost;
  String? withPaymentTerm;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? status;
  String? ip;
  String? stankDisc;
  String? wtankDisc;
  String? mkDisc;
  String? fcDisc;
  String? bookingId;
  String? bookingDate;

  Result(
      {this.id,
        this.calcType,
        this.clientName,
        this.clientMob,
        this.clientAddr,
        this.length,
        this.width,
        this.depth,
        this.totalArea,
        this.floorNum,
        this.workArea,
        this.floorSqPrice,
        this.floorDiscPrice,
        this.totalFDisc,
        this.totalWorkArea,
        this.avgCost,
        this.totalFloorCost,
        this.roadFacing,
        this.rftRate,
        this.bwallHeight,
        this.bwallArea,
        this.bwallCost,
        this.openArea,
        this.openAreaType,
        this.openAreaCost,
        this.elevType,
        this.elevRate,
        this.elevRateStr,
        this.elevCost,
        this.elevCostStr,
        this.totalCost,
        this.stankRate,
        this.isMkitchen,
        this.stankArea,
        this.stankCost,
        this.isStank,
        this.isWtank,
        this.wtankRate,
        this.wtankArea,
        this.wtankCost,
        this.extraPlinthCost,
        this.floorFcelingCost,
        this.sumFcelingCost,
        this.isFceling,
        this.mkitchenCost,
        this.floorStr,
        this.eStr,
        this.tataSteel,
        this.jindalSteel,
        this.jindalBricks,
        this.marble,
        this.woodenLook,
        this.photoFrame,
        this.noPhotoFrame,
        this.compTime,
        this.expBrick,
        this.frameType,
        this.toiletType,
        this.addToilet,
        this.floorStrength,
        this.toiletQty,
        this.additionalCost,
        this.totalDiscCost,
        this.withPaymentTerm,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.status,
        this.ip,
        this.stankDisc,
        this.wtankDisc,
        this.mkDisc,
        this.fcDisc,
        this.bookingId,
        this.bookingDate});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    calcType = json['calc_type'];
    clientName = json['client_name'];
    clientMob = json['client_mob'];
    clientAddr = json['client_addr'];
    length = json['length'];
    width = json['width'];
    depth = json['depth'];
    totalArea = json['total_area'];
    floorNum = json['floor_num'];
    workArea = json['work_area'];
    floorSqPrice = json['floor_sq_price'];
    floorDiscPrice = json['floor_disc_price'];
    totalFDisc = json['total_f_disc'];
    totalWorkArea = json['total_work_area'];
    avgCost = json['avg_cost'];
    totalFloorCost = json['total_floor_cost'];
    roadFacing = json['road_facing'];
    rftRate = json['rft_rate'];
    bwallHeight = json['bwall_height'];
    bwallArea = json['bwall_area'];
    bwallCost = json['bwall_cost'];
    openArea = json['open_area'];
    openAreaType = json['open_area_type'];
    openAreaCost = json['open_area_cost'];
    elevType = json['elev_type'];
    elevRate = json['elev_rate'];
    elevRateStr = json['elev_rate_str'];
    elevCost = json['elev_cost'];
    elevCostStr = json['elev_cost_str'];
    totalCost = json['total_cost'];
    stankRate = json['stank_rate'];
    isMkitchen = json['is_mkitchen'];
    stankArea = json['stank_area'];
    stankCost = json['stank_cost'];
    isStank = json['is_stank'];
    isWtank = json['is_wtank'];
    wtankRate = json['wtank_rate'];
    wtankArea = json['wtank_area'];
    wtankCost = json['wtank_cost'];
    extraPlinthCost = json['extra_plinth_cost'];
    floorFcelingCost = json['floor_fceling_cost'];
    sumFcelingCost = json['sum_fceling_cost'];
    isFceling = json['is_fceling'];
    mkitchenCost = json['mkitchen_cost'];
    floorStr = json['floor_str'];
    eStr = json['e_str'];
    tataSteel = json['tata_steel'];
    jindalSteel = json['jindal_steel'];
    jindalBricks = json['jindal_bricks'];
    marble = json['marble'];
    woodenLook = json['wooden_look'];
    photoFrame = json['photo_frame'];
    noPhotoFrame = json['no_photo_frame'];
    compTime = json['comp_time'];
    expBrick = json['exp_brick'];
    frameType = json['frame_type'];
    toiletType = json['toilet_type'];
    addToilet = json['add_toilet'];
    floorStrength = json['floor_strength'];
    toiletQty = json['toilet_qty'];
    additionalCost = json['additional_cost'];
    totalDiscCost = json['total_disc_cost'];
    withPaymentTerm = json['with_payment_term'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    status = json['status'];
    ip = json['ip'];
    stankDisc = json['stank_disc'];
    wtankDisc = json['wtank_disc'];
    mkDisc = json['mk_disc'];
    fcDisc = json['fc_disc'];
    bookingId = json['booking_id'];
    bookingDate = json['booking_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['calc_type'] = this.calcType;
    data['client_name'] = this.clientName;
    data['client_mob'] = this.clientMob;
    data['client_addr'] = this.clientAddr;
    data['length'] = this.length;
    data['width'] = this.width;
    data['depth'] = this.depth;
    data['total_area'] = this.totalArea;
    data['floor_num'] = this.floorNum;
    data['work_area'] = this.workArea;
    data['floor_sq_price'] = this.floorSqPrice;
    data['floor_disc_price'] = this.floorDiscPrice;
    data['total_f_disc'] = this.totalFDisc;
    data['total_work_area'] = this.totalWorkArea;
    data['avg_cost'] = this.avgCost;
    data['total_floor_cost'] = this.totalFloorCost;
    data['road_facing'] = this.roadFacing;
    data['rft_rate'] = this.rftRate;
    data['bwall_height'] = this.bwallHeight;
    data['bwall_area'] = this.bwallArea;
    data['bwall_cost'] = this.bwallCost;
    data['open_area'] = this.openArea;
    data['open_area_type'] = this.openAreaType;
    data['open_area_cost'] = this.openAreaCost;
    data['elev_type'] = this.elevType;
    data['elev_rate'] = this.elevRate;
    data['elev_rate_str'] = this.elevRateStr;
    data['elev_cost'] = this.elevCost;
    data['elev_cost_str'] = this.elevCostStr;
    data['total_cost'] = this.totalCost;
    data['stank_rate'] = this.stankRate;
    data['is_mkitchen'] = this.isMkitchen;
    data['stank_area'] = this.stankArea;
    data['stank_cost'] = this.stankCost;
    data['is_stank'] = this.isStank;
    data['is_wtank'] = this.isWtank;
    data['wtank_rate'] = this.wtankRate;
    data['wtank_area'] = this.wtankArea;
    data['wtank_cost'] = this.wtankCost;
    data['extra_plinth_cost'] = this.extraPlinthCost;
    data['floor_fceling_cost'] = this.floorFcelingCost;
    data['sum_fceling_cost'] = this.sumFcelingCost;
    data['is_fceling'] = this.isFceling;
    data['mkitchen_cost'] = this.mkitchenCost;
    data['floor_str'] = this.floorStr;
    data['e_str'] = this.eStr;
    data['tata_steel'] = this.tataSteel;
    data['jindal_steel'] = this.jindalSteel;
    data['jindal_bricks'] = this.jindalBricks;
    data['marble'] = this.marble;
    data['wooden_look'] = this.woodenLook;
    data['photo_frame'] = this.photoFrame;
    data['no_photo_frame'] = this.noPhotoFrame;
    data['comp_time'] = this.compTime;
    data['exp_brick'] = this.expBrick;
    data['frame_type'] = this.frameType;
    data['toilet_type'] = this.toiletType;
    data['add_toilet'] = this.addToilet;
    data['floor_strength'] = this.floorStrength;
    data['toilet_qty'] = this.toiletQty;
    data['additional_cost'] = this.additionalCost;
    data['total_disc_cost'] = this.totalDiscCost;
    data['with_payment_term'] = this.withPaymentTerm;
    data['create_by'] = this.createBy;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['status'] = this.status;
    data['ip'] = this.ip;
    data['stank_disc'] = this.stankDisc;
    data['wtank_disc'] = this.wtankDisc;
    data['mk_disc'] = this.mkDisc;
    data['fc_disc'] = this.fcDisc;
    data['booking_id'] = this.bookingId;
    data['booking_date'] = this.bookingDate;
    return data;
  }
}
