import 'dart:convert';
import 'dart:developer';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_manager/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/decision_maker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:client_manager/models/booking_model/booking_details_model.dart';

class DecisionMakerEdit extends StatefulWidget {
  const DecisionMakerEdit({Key? key}) : super(key: key);

  @override
  State<DecisionMakerEdit> createState() => _DecisionMakerEditState();
}

class _DecisionMakerEditState extends State<DecisionMakerEdit> {
  final dm = Get.put(DecisionMakerEditController());
  final bkc = Get.put(BookingDetailsController());

  late DecMaker? data;

  @override
  void initState() {
    super.initState();
    assignData();
  }

  assignData() {
    data = bkc.bookingDetails.value.result!.decMaker;
    dm.bookingId.value = bkc.bookingDetails.value.result!.clientInfo!.id!;
    if (data != null) {
      var add = jsonDecode(data!.dAddr!);
      //debugPrint(add.toString());
      dm.id.value = data!.id!;
      dm.clientName.value.text = data!.dName!;
      dm.relation.value.text = data!.dRelation!;
      dm.mobile.value.text = data!.dMobileNo!;
      dm.email.value.text = data!.dEmailId!;
      dm.pan.value.text = data!.dPanNo!;
      dm.aadhaar.value.text = data!.dAadharNo!;

      dm.dMHouseNo.value.text = add['d_hno'];
      dm.dMColony.value.text = add['d_street'];
      dm.dMLandmark.value.text = add['d_landmark'];
      dm.dMCity.value.text = add['d_city'];
      dm.dMState.value.text = add['d_state'];
      dm.dMPin.value.text = add['d_pincode'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: Get.height,
            decoration: BoxDecoration(
              color: FlutterFlowTheme
                  .of(context)
                  .primaryBackground,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, bottom: 20, top: 10),
                  child: Stack(
                    children: [

                      IconButton(onPressed: () {
                        Get.back();
                      }, icon: Icon(Icons.arrow_back_rounded,
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor)),
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
                              'Edit Decision Maker',
                              style:
                              FlutterFlowTheme
                                  .of(context)
                                  .title3,
                            ),
                          ],
                        ),
                      )
                    ],
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
                                  Row(
                                    children: [
                                      Obx(() {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          // fillColor: MaterialStateProperty.resolveWith(getColor),
                                          value: dm.sameAsClientInfo.value,
                                          onChanged: (bool? value) {
                                            dm.sameAsClientInfo.value = value ?? false;
                                            ClientInfo data = bkc.bookingDetails
                                                .value.result!.clientInfo ??
                                                ClientInfo();

                                            if (value ?? false == true) {
                                              dm.clientName.value.text =
                                                  data.clientName ?? "";
                                              dm.relation.value.text = "Self";
                                              dm.mobile.value.text =
                                                  data.mobileNo ?? "";
                                              dm.email.value.text =
                                                  data.emailId ?? "";
                                              dm.pan.value.text =
                                                  data.panNo ?? "";
                                              dm.aadhaar.value.text =
                                                  data.aadharNo ?? "";
                                              var add = jsonDecode(
                                                  data.permanentAddr ??
                                                      '{"p_hno":"","p_street":"","p_landmark":"","p_city":"","p_state":"","p_pincode":""}');

                                              dm.dMHouseNo.value.text =
                                                  add['p_hno'] ?? "";
                                              dm.dMColony.value.text =
                                                  add['p_street'] ?? "";
                                              dm.dMLandmark.value.text =
                                                  add['p_landmark'] ?? "";
                                              dm.dMCity.value.text =
                                                  add['p_city'] ?? "";
                                              dm.dMState.value.text =
                                                  add['p_state'] ?? "";
                                              dm.dMPin.value.text =
                                                  add['p_pincode'] ?? "";
                                            }
                                            else {
                                              dm.clientName.value.text = "";
                                              dm.relation.value.text = "";
                                              dm.mobile.value.text = "";
                                              dm.email.value.text = "";
                                              dm.pan.value.text = "";
                                              dm.aadhaar.value.text = "";
                                              dm.dMHouseNo.value.text = "";
                                              dm.dMColony.value.text = "";
                                              dm.dMLandmark.value.text = "";
                                              dm.dMCity.value.text = "";
                                              dm.dMState.value.text = "";
                                              dm.dMPin.value.text = "";
                                            }
                                          },
                                        );
                                      }),
                                      const Text("Same As Client Info")
                                    ],
                                  ),
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
                                              controller: dm.clientName.value,
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
                                            controller: dm.relation.value,
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
                                              controller: dm.mobile.value,
                                              obscureText: false,
                                              keyboardType: TextInputType.phone,
                                              //maxLength: 10,
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
                                            controller: dm.email.value,
                                            obscureText: false,
                                            keyboardType: TextInputType
                                                .emailAddress,
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
                                              controller: dm.pan.value,
                                              obscureText: false,
                                              //maxLength: 10,
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
                                            controller: dm.aadhaar.value,
                                            obscureText: false,
                                            keyboardType: TextInputType.number,
                                            //maxLength: 10,
                                            decoration:
                                            InputDecoration(
                                              labelText:
                                              ' Enter Aadhaar Number',
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
                                              controller: dm.dMHouseNo.value,
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
                                            controller: dm.dMColony.value,
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
                                              controller: dm.dMLandmark.value,
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
                                            controller: dm.dMCity.value,
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
                                              controller: dm.dMState.value,
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
                                            controller: dm.dMPin.value,
                                            obscureText: false,
                                            keyboardType: TextInputType.number,
                                            //maxLength: 6,
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
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional
                                          .fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
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
                                                  dm.save();
                                                  // Get.back();
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
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
                                            ],
                                          ),
                                        ],
                                      ),
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
        ),
      ),
    );
  }
}
