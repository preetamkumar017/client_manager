import 'dart:convert';
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view_models/controller/booking/booking_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';

class DecisionMaker extends StatelessWidget {
  DecisionMaker({super.key});

  final bkc = Get.put(BookingDetailsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 1.0,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.9,
          decoration: BoxDecoration(
            color: FlutterFlowTheme
                .of(context)
                .secondaryBackground,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: FlutterFlowTheme
                  .of(context)
                  .primaryBackground,
              width: 2.0,
            ),
          ),
          child: Obx(() {

            var data = bkc.bookingDetails.value.result;
            if(data?.decMaker != null)
              {
              var address =  jsonDecode(data!.decMaker!.dAddr ?? "");
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Decision Maker',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .title3,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () async {
                              bool result = await  Get.toNamed(RouteName.decisionMaker);
                              //debugPrint(result.toString());
                              if(result)
                              {
                                bkc.bookingDetailsApi(bkc.bookingDetails.value.result!.clientInfo!.id!);
                              }
                            },
                            child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.15,
                              height:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.03,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme
                                    .of(context)
                                    .iconeditcontainer,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .iconeditcolour,
                                    size: 12.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional
                                        .fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Edit',
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color:
                                        FlutterFlowTheme
                                            .of(context)
                                            .iconeditcolour,
                                        fontSize: 10.0,
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
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.85,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme
                                          .of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(
                                            10.0, 15.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 0.5,
                                                            shape:
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  5.0),
                                                            ),
                                                            child: Container(
                                                              width: 20.0,
                                                              height: 20.0,
                                                              decoration:
                                                              BoxDecoration(
                                                                color: FlutterFlowTheme
                                                                    .of(context)
                                                                    .iconContailnerMain,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    5.0),
                                                              ),
                                                              child: Icon(
                                                                Icons.person,
                                                                color: FlutterFlowTheme
                                                                    .of(context)
                                                                    .iconColor,
                                                                size: 15.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              data.decMaker!.dName ?? "",
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                5.0,
                                                                0.0),
                                                            child: Text(
                                                              'Relation: ${data.decMaker!.dRelation}',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                          Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 0.5,
                                                            shape:
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  5.0),
                                                            ),
                                                            child: Container(
                                                              width: 20.0,
                                                              height: 20.0,
                                                              decoration:
                                                              BoxDecoration(
                                                                color: FlutterFlowTheme
                                                                    .of(context)
                                                                    .iconContailnerMain,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    5.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    3.0,
                                                                    3.0,
                                                                    3.0,
                                                                    3.0),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/age-group.png',
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.5,
                                                              shape:
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    5.0),
                                                              ),
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                BoxDecoration(
                                                                  color: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .iconContailnerMain,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      5.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      3.0,
                                                                      3.0,
                                                                      3.0,
                                                                      3.0),
                                                                  child:
                                                                  Image.asset(
                                                                    'assets/images/call.png',
                                                                    width: 100.0,
                                                                    height: 100.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                              child: Text(
                                                                data.decMaker!.dMobileNo ?? "",
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            SizedBox(
                                                              width: Get.width*0.4,
                                                              child: Text(
                                                                data.decMaker!.dEmailId ?? "",
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .bodyText1,
                                                                overflow: TextOverflow.ellipsis,
                                                              ),
                                                            ),
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.5,
                                                              shape:
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    5.0),
                                                              ),
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                BoxDecoration(
                                                                  color: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .iconContailnerMain,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      5.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      3.0,
                                                                      3.0,
                                                                      3.0,
                                                                      3.0),
                                                                  child:
                                                                  Image.asset(
                                                                    'assets/images/email_(4).png',
                                                                    width: 100.0,
                                                                    height: 100.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  StyledDivider(
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .divider,
                                                    lineStyle:
                                                    DividerLineStyle.dashed,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: 'PAN: ',
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                  data.decMaker!.dPanNo ?? "",
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                  'Aadhaar: ',
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                  data.decMaker!.dAadharNo,
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
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
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0.5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width *
                                          0.85,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 5.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                    const AlignmentDirectional(
                                                        0.0, 0.0),
                                                    child: Container(
                                                      width:
                                                      MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width *
                                                          0.18,
                                                      height:
                                                      MediaQuery
                                                          .of(context)
                                                          .size
                                                          .height *
                                                          0.02,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .iconblueContainer,
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                      ),
                                                      alignment:
                                                      const AlignmentDirectional(
                                                          -0.050000000000000044,
                                                          0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Icon(
                                                            Icons.location_on,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .iconbluecolour,
                                                            size: 12.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Present',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF32A7E2),
                                                                fontSize:
                                                                10.0,
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
                                            Padding(
                                              padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 5.0, 15.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(5.0, 0.0,
                                                          0.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                      'House No. : ',
                                                                      style:
                                                                      TextStyle(
                                                                        color: FlutterFlowTheme
                                                                            .of(
                                                                            context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                     TextSpan(
                                                                      text:
                                                                      address['d_hno'] ?? "",
                                                                      style:
                                                                      const TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                      'Street : ',
                                                                      style:
                                                                      TextStyle(
                                                                        color: FlutterFlowTheme
                                                                            .of(
                                                                            context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                     TextSpan(
                                                                      text:
                                                                      address['d_street'] ?? "",
                                                                      style:
                                                                      const TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                      'Landmark : ',
                                                                      style:
                                                                      TextStyle(
                                                                        color: FlutterFlowTheme
                                                                            .of(
                                                                            context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                     TextSpan(
                                                                      text:
                                                                      address['d_landmark'] ?? "",
                                                                      style:
                                                                      const TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Wrap(
                                                            children: [
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                      'City : ',
                                                                      style:
                                                                      TextStyle(
                                                                        color: FlutterFlowTheme
                                                                            .of(
                                                                            context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                     TextSpan(
                                                                      text:
                                                                      address['d_city'],
                                                                      style:
                                                                      const TextStyle(),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme
                                                                      .of(
                                                                      context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                                child: RichText(
                                                                  text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                        'State : ',
                                                                        style:
                                                                        TextStyle(
                                                                          color: FlutterFlowTheme
                                                                              .of(
                                                                              context)
                                                                              .primaryText,
                                                                        ),
                                                                      ),
                                                                       TextSpan(
                                                                        text:
                                                                        '${address['d_state']}, ${address['d_pincode']}',
                                                                        style:
                                                                        const TextStyle(),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme
                                                                        .of(
                                                                        context)
                                                                        .bodyText1,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }else{
              return Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Decision Maker',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .title3,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () async {
                          bool result = await  Get.toNamed(RouteName.decisionMaker);
                          //debugPrint(result.toString());
                            if(result)
                            {
                              bkc.bookingDetailsApi(bkc.bookingDetails.value.result!.clientInfo!.id!);
                            }
                          },
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.15,
                            height:
                            MediaQuery
                                .of(context)
                                .size
                                .height * 0.03,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .iconeditcontainer,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .iconeditcolour,
                                  size: 12.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional
                                      .fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Edit',
                                    style: FlutterFlowTheme
                                        .of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color:
                                      FlutterFlowTheme
                                          .of(context)
                                          .iconeditcolour,
                                      fontSize: 10.0,
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
                  const Center(
                    child: Text("No data found"),
                  ),
                ],
              );
            }
          }),
        ),
      ],
    );
  }
}
