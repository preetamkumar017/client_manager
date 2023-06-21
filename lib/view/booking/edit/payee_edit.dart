import 'dart:convert';
import 'dart:developer';

import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_booking/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/payee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:client_booking/models/booking_model/booking_details_model.dart';

class PayeeEdit extends StatefulWidget {
  const PayeeEdit({Key? key}) : super(key: key);

  @override
  State<PayeeEdit> createState() => _PayeeEditState();
}

class _PayeeEditState extends State<PayeeEdit> {
  final pc = Get.put(PayeeEditController());
  final bkc = Get.put(BookingDetailsController());
  
  late Payee? data ;
  @override
  void initState() {
    super.initState();

    data = bkc.bookingDetails.value.result!.payee;
    pc.bookingId.value = bkc.bookingDetails.value.result!.clientInfo!.id!;

    if(data!=null)
    {
      var add = jsonDecode(data!.pAddr!);
      //debugPrint(add.toString());
      pc.id.value = data!.id!;
      pc.clientName.value.text = data!.payeeName!;
      pc.relation.value.text = data!.pRelation!;
      pc.mobile.value.text = data!.pMobileNo!;
      pc.email.value.text = data!.pEmailId!;
      pc.pan.value.text = data!.pPanNo!;
      pc.aadhaar.value.text = data!.pAadharNo!;

      pc.pyHouseNo.value.text = add['p_hno'];
      pc.pyColony.value.text = add['p_street'];
      pc.pyLandmark.value.text = add['p_landmark'];
      pc.pyCity.value.text = add['p_city'];
      pc.pyState.value.text = add['p_state'];
      pc.pyPin.value.text = add['p_pincode'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme
                      .of(context)
                      .primaryBackground,
                ),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(left: 10,bottom: 20,top: 10),
                      child: Stack(
                        children:[

                          IconButton(onPressed: (){
                            Get.back();
                          }, icon:  Icon(Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).iconColor)),
                          Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Edit Payee',
                                  style:
                                  FlutterFlowTheme
                                      .of(context)
                                      .title3,
                                ),
                              ],
                            ),
                          )],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme
                              .of(context)
                              .alternate,
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme
                                .of(context)
                                .alternate,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [

                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Form(
                                  autovalidateMode:
                                  AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10.0, 15.0,
                                            10.0, 0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    5.0,
                                                    0.0),
                                                child: TextFormField(
                                                  controller: pc.clientName.value,
                                                  obscureText: false,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText:
                                                    'Name (Decision Marker)',
                                                    labelStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .bodyText1,
                                                    hintStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2,
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),

                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    errorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .alternate,
                                                    contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                  maxLines: null,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller: pc.relation.value,
                                                obscureText: false,
                                                decoration:
                                                InputDecoration(
                                                  labelText:
                                                  'Enter Relation',
                                                  labelStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .bodyText1,
                                                  hintStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .subtitle2,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),

                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .alternate,
                                                  contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0,
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                                ),
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                                maxLines: null,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10.0, 10.0,
                                            10.0, 0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    5.0,
                                                    0.0),
                                                child: TextFormField(
                                                  controller: pc.mobile.value,
                                                  obscureText: false,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText:
                                                    ' Enter Mobile Number',
                                                    labelStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .bodyText1,
                                                    hintStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2,
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),

                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    errorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .alternate,
                                                    contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                  maxLines: null,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller: pc.email.value,
                                                obscureText: false,
                                                decoration:
                                                InputDecoration(
                                                  labelText:
                                                  ' Enter Email',
                                                  labelStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .bodyText1,
                                                  hintStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .subtitle2,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),

                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .alternate,
                                                  contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0,
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                                ),
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                                maxLines: null,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10.0, 10.0,
                                            10.0, 0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    5.0,
                                                    0.0),
                                                child: TextFormField(
                                                  controller: pc.pan.value,
                                                  obscureText: false,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText:
                                                    ' Enter PAN Number',
                                                    labelStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .bodyText1,
                                                    hintStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2,
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),

                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    errorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .alternate,
                                                    contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                  maxLines: null,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller: pc.aadhaar.value,
                                                obscureText: false,
                                                decoration:
                                                InputDecoration(
                                                  labelText:
                                                  'Enter Aadhaar Number',
                                                  labelStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .bodyText1,
                                                  hintStyle:
                                                  FlutterFlowTheme
                                                      .of(context)
                                                      .subtitle2,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),

                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .alternate,
                                                  contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0,
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                                ),
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                                maxLines: null,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10.0, 10.0,
                                            10.0, 0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    5.0,
                                                    0.0),
                                                child: TextFormField(
                                                  controller: pc.pyHouseNo.value,
                                                  obscureText: false,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText:
                                                    ' Enter House No.',
                                                    labelStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .bodyText1,
                                                    hintStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2,
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),

                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    errorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .alternate,
                                                    contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                  maxLines: null,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller: pc.pyColony.value,
                                                obscureText: false,
                                                decoration:
                                                InputDecoration(
                                                  labelText:
                                                  ' Enter Street/ Colony',
                                                  labelStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .bodyText1,
                                                  hintStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .subtitle2,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),

                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .alternate,
                                                  contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0,
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                                ),
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                                maxLines: null,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10.0, 10.0,
                                            10.0, 0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    5.0,
                                                    0.0),
                                                child: TextFormField(
                                                  controller: pc.pyLandmark.value,
                                                  obscureText: false,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText:
                                                    ' Enter Landmark',
                                                    labelStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .bodyText1,
                                                    hintStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2,
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),

                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    errorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .alternate,
                                                    contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                  maxLines: null,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller: pc.pyCity.value,
                                                obscureText: false,
                                                decoration:
                                                InputDecoration(
                                                  labelText:
                                                  ' Enter City',
                                                  labelStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .bodyText1,
                                                  hintStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .subtitle2,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),

                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .alternate,
                                                  contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0,
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                                ),
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                                maxLines: null,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10.0, 10.0,
                                            10.0, 0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    5.0,
                                                    0.0),
                                                child: TextFormField(
                                                  controller: pc.pyState.value,
                                                  obscureText: false,
                                                  decoration:
                                                  InputDecoration(
                                                    labelText:
                                                    ' Enter State',
                                                    labelStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .bodyText1,
                                                    hintStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2,
                                                    enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),

                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .borderColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    errorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                    OutlineInputBorder(
                                                      borderSide:
                                                      const BorderSide(
                                                        color: Color(
                                                            0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .alternate,
                                                    contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                  maxLines: null,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: TextFormField(
                                                controller: pc.pyPin.value,
                                                obscureText: false,
                                                decoration:
                                                InputDecoration(
                                                  labelText:
                                                  ' Enter Pin Code',
                                                  labelStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .bodyText1,
                                                  hintStyle:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .subtitle2,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),

                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .borderColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Color(
                                                          0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .alternate,
                                                  contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0,
                                                      0.0,
                                                      0.0,
                                                      0.0),
                                                ),
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                                maxLines: null,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(vertical: 20),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisSize:
                                              MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  text: 'Back',
                                                  options:
                                                  FFButtonOptions(
                                                    width: 100.0,
                                                    height: 30.0,
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                    iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0.0,
                                                        0.0,
                                                        0.0,
                                                        0.0),
                                                    color: FlutterFlowTheme
                                                        .of(context)
                                                        .primaryColor,
                                                    textStyle:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .subtitle2
                                                        .override(
                                                      fontFamily:
                                                      'Poppins',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .primaryText,
                                                    ),
                                                    borderSide:
                                                    const BorderSide(
                                                      color: Colors
                                                          .transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize:
                                              MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    pc.submit();
                                                  },
                                                  child: Container(
                                                    width: MediaQuery
                                                        .of(
                                                        context)
                                                        .size
                                                        .width *
                                                        0.35,
                                                    height: MediaQuery
                                                        .of(
                                                        context)
                                                        .size
                                                        .height *
                                                        0.04,
                                                    decoration:
                                                    BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .buttonColor,
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          10.0),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Update',
                                                        style: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          color:
                                                          FlutterFlowTheme
                                                              .of(context)
                                                              .btnText,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
