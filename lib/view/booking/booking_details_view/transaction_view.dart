
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view_models/controller/booking/booking_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:styled_divider/styled_divider.dart';

class TransactionDetailsView extends StatelessWidget {
   TransactionDetailsView({super.key});

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
              .height * 1.0,
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

            var data = bkc.bookingDetails.value.result!.transDetail;
            if(data != null)
              {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
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
                                  'Transaction Details',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .title3,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () async {
                              bool result =  await Get.toNamed(RouteName.transaction);
                              //debugPrint(result.toString());
                              if(result)
                              {
                                //debugPrint("message");
                                bkc.bookingDetailsApi(bkc.bookingDetails.value.result!.clientInfo!.id!);
                              }
                            },
                            child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.15,
                              height: MediaQuery
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
                                        color: FlutterFlowTheme
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
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          25.0, 25.0, 25.0, 25.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.06,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .iconblueContainer,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            alignment: const AlignmentDirectional(
                                -0.050000000000000044, -0.7),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.local_offer_rounded,
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .iconbluecolour,
                                        size: 12.0,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Offer',
                                          style: FlutterFlowTheme
                                              .of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme
                                                .of(context)
                                                .iconbluecolour2,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    // mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rs. ${data.offerAmt}',
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .iconbluecolour,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme
                                    .of(context)
                                    .iconblueContainer,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              alignment: const AlignmentDirectional(
                                  -0.050000000000000044, -0.7),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star_rounded,
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .iconbluecolour,
                                          size: 12.0,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Quotation',
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .of(context)
                                                  .iconbluecolour2,
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data.quotationType ?? "",
                                          style: FlutterFlowTheme
                                              .of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme
                                                .of(context)
                                                .iconbluecolour,
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
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 15.0, 50.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Final Discounted Rate:',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Rs. ${data.finalRate}',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 5.0, 50.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Booking Amount ',
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: ' (Not-Refundable)',
                                      style: TextStyle(
                                        color:
                                        FlutterFlowTheme
                                            .of(context)
                                            .customColor3,
                                      ),
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
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Rs. ${data.paidBookingAmt}',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    StyledDivider(
                      thickness: 1.0,
                      indent: 20.0,
                      endIndent: 20.0,
                      color: FlutterFlowTheme
                          .of(context)
                          .divider,
                      lineStyle: DividerLineStyle.dashed,
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 5.0, 50.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Amount:',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.03,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .iconblueContainer,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rs. ${data.finalAmt}',
                                  style:
                                  FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .iconbluecolour,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 5.0, 50.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'In Words:',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  data.finalAmtInWord ?? "",
                                  maxLines: 2,
                                  style:
                                  FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
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
                      const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.8,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.12,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .borderColor,
                                    width: 0.5,
                                  ),
                                ),
                                alignment: const AlignmentDirectional(
                                    -0.050000000000000044, -0.7),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 15.0, 15.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(0.0, 0.05),
                                            child: Container(
                                              width:
                                              MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width *
                                                  0.25,
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
                                                BorderRadius.circular(5.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Payment Mode',
                                                    style:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                      FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .iconbluecolour,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 5.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 1.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5.0),
                                                ),
                                                child: Container(
                                                  width: 25.0,
                                                  height: 25.0,
                                                  decoration: BoxDecoration(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .white,
                                                    borderRadius:
                                                    BorderRadius.circular(5.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.qr_code_rounded,
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .iconColor,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'UPI done with QR',
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.05),
                                                child: Container(
                                                  width: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .width *
                                                      0.25,
                                                  height: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .height *
                                                      0.02,
                                                  decoration: BoxDecoration(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .iconeditcontainer,
                                                    borderRadius:
                                                    BorderRadius.circular(5.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Payment Done',
                                                        style: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .bodyText2
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                          FlutterFlowTheme
                                                              .of(
                                                              context)
                                                              .iconeditcolour,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 5.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Transaction Id:  ',
                                                  style: TextStyle(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' ${data.transId}',
                                                  style: TextStyle(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .secondaryText,
                                                  ),
                                                )
                                              ],
                                              style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1,
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
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.8,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.15,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .borderColor,
                                    width: 0.5,
                                  ),
                                ),
                                alignment: const AlignmentDirectional(
                                    -0.050000000000000044, -0.7),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 15.0, 15.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(0.0, 0.05),
                                            child: Container(
                                              width:
                                              MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width *
                                                  0.25,
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
                                                BorderRadius.circular(5.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Funding Mode',
                                                    style:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                      FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .iconbluecolour,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.05),
                                                child: Container(
                                                  width: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .width *
                                                      0.15,
                                                  height: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .height *
                                                      0.02,
                                                  decoration: BoxDecoration(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .iconeditcontainer,
                                                    borderRadius:
                                                    BorderRadius.circular(5.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        data.fundingMode ?? "",
                                                        style: FlutterFlowTheme
                                                            .of(
                                                            context)
                                                            .bodyText2
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                          FlutterFlowTheme
                                                              .of(
                                                              context)
                                                              .iconeditcolour,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 2.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Self Amount',
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Rs. ${data.selfAmt}',
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 2.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Bank Name',
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                data.bankName ?? "",
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 2.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Loan Amount',
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Rs. ${data.loanAmt}',
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 2.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Loan Account',
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                data.loanAccNo ?? "",
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }else
                {
                  return Column(
                    children: [
                      Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
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
                                      'Transaction Details',
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .title3,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () async {
                                  bool result =  await Get.toNamed(RouteName.transaction);
                                  //debugPrint(result.toString());
                                  if(result)
                                  {
                                    //debugPrint("message");
                                    bkc.bookingDetailsApi(bkc.bookingDetails.value.result!.clientInfo!.id!);
                                  }
                                },
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.15,
                                  height: MediaQuery
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
                                            color: FlutterFlowTheme
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
                    ],
                  );
                }
          }),
        ),
      ],
    );
  }
}
