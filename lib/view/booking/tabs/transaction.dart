import 'package:client_booking/view/flutter_flow/flutter_flow_choice_chips.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/transaction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Transaction extends StatefulWidget {
  final VoidCallback onNextTab;
  final VoidCallback onBackTab;

  const Transaction(
      {Key? key, required this.onNextTab, required this.onBackTab})
      : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final tc = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 0.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme
            .of(context)
            .primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.666,
          height: 95.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme
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
                  const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Transaction Details',
                        style: FlutterFlowTheme
                            .of(context)
                            .title3,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Form(
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    controller: tc.anyOffer.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Any Offer',
                                      labelStyle: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
                                      hintText: 'Enter Amount',
                                      hintStyle: FlutterFlowTheme
                                          .of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme
                                          .of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme
                                        .of(context)
                                        .bodyText1,
                                    maxLines: null,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Quotation rate of selection',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Standard', Icons.star_rounded),
                                    ChipData('Premium', Icons.star_rounded),
                                    ChipData('Luxury', Icons.star_rounded),
                                    ChipData('Ultra Luxury', Icons.star_rounded)
                                  ],
                                  onChanged: (val) {
                                    switch (val!.first.toString()) {
                                      case "Standard":
                                        {
                                          tc.quotationRate.value = "Standard";
                                          break;
                                        }
                                      case "Premium":
                                        {
                                          tc.quotationRate.value = "Premium";
                                          break;
                                        }
                                      case "Luxury":
                                        {
                                          tc.quotationRate.value = "Luxury";
                                          break;
                                        }
                                      case "Ultra Luxury":
                                        {
                                          tc.quotationRate.value =
                                          "Ultra Luxury";
                                          break;
                                        }
                                    }
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .borderColor,
                                    textStyle: FlutterFlowTheme
                                        .of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    iconColor: Colors.white,
                                    iconSize: 18.0,
                                    elevation: 1.0,
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .white,
                                    textStyle: FlutterFlowTheme
                                        .of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme
                                          .of(context)
                                          .secondaryText,
                                    ),
                                    iconColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .iconColor,
                                    iconSize: 18.0,
                                    elevation: 1.0,
                                  ),
                                  chipSpacing: 20.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    controller: tc.discountRate.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Final Discounted Rate:',
                                      labelStyle: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
                                      hintText: 'Final Discounted Rate:',
                                      hintStyle: FlutterFlowTheme
                                          .of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme
                                          .of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme
                                        .of(context)
                                        .bodyText1,
                                    maxLines: null,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: tc.amount.value,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: ' Enter Amount',
                                    labelStyle:
                                    FlutterFlowTheme
                                        .of(context)
                                        .bodyText1,
                                    hintText: 'Amount',
                                    hintStyle:
                                    FlutterFlowTheme
                                        .of(context)
                                        .subtitle2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .borderColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .borderColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .alternate,
                                    contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
                                  maxLines: null,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    controller: tc.inWords.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'In Words',
                                      labelStyle: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
                                      hintText: 'In Words',
                                      hintStyle: FlutterFlowTheme
                                          .of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme
                                          .of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme
                                        .of(context)
                                        .bodyText1,
                                    maxLines: null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    controller: tc.nonRefundable.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Non- Refundable',
                                      labelStyle: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFFFF0000),
                                      ),
                                      hintText:
                                      'Booking Amount Paid Not-Refundable',
                                      hintStyle: FlutterFlowTheme
                                          .of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme
                                          .of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme
                                        .of(context)
                                        .bodyText1,
                                    maxLines: null,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Payment Link',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsetsDirectional.fromSTEB(
                        //       10.0, 5.0, 10.0, 0.0),
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.max,
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Expanded(
                        //         child: FlutterFlowChoiceChips(
                        //           options: const [
                        //             ChipData('UPI'),
                        //             ChipData('NEFT/RTGS/IMPS'),
                        //             ChipData('Cards'),
                        //             ChipData('Cheque')
                        //           ],
                        //           onChanged: (val) {
                        //             switch (val!.first.toString()) {
                        //               case "UPI":
                        //                 {
                        //                   tc.paymentMode.value = "UPI";
                        //                   tc.isUpi.value = true;
                        //                   tc.isCheque.value = false;
                        //                   break;
                        //                 }
                        //               case "NEFT/RTGS/IMPS":
                        //                 {
                        //                   tc.paymentMode.value = "NEFT/RTGS/IMPS";
                        //                   tc.isUpi.value = false;
                        //                   tc.isCheque.value = false;
                        //                   break;
                        //                 }
                        //               case "Cards":
                        //                 {
                        //                   tc.paymentMode.value = "Cards";
                        //                   tc.isUpi.value = false;
                        //                   tc.isCheque.value = false;
                        //                   break;
                        //                 }
                        //               case "Cheque":
                        //                 {
                        //                   tc.paymentMode.value = "Cheque";
                        //                   tc.isUpi.value = false;
                        //                   tc.isCheque.value = true;
                        //                   break;
                        //                 }
                        //             }
                        //           },
                        //           selectedChipStyle: ChipStyle(
                        //             backgroundColor:
                        //             FlutterFlowTheme
                        //                 .of(context)
                        //                 .borderColor,
                        //             textStyle: FlutterFlowTheme
                        //                 .of(context)
                        //                 .bodyText1
                        //                 .override(
                        //               fontFamily: 'Poppins',
                        //               color: Colors.white,
                        //             ),
                        //             iconColor: Colors.white,
                        //             iconSize: 18.0,
                        //             elevation: 1.0,
                        //           ),
                        //           unselectedChipStyle: ChipStyle(
                        //             backgroundColor:
                        //             FlutterFlowTheme
                        //                 .of(context)
                        //                 .white,
                        //             textStyle: FlutterFlowTheme
                        //                 .of(context)
                        //                 .bodyText1
                        //                 .override(
                        //               fontFamily: 'Poppins',
                        //               color: FlutterFlowTheme
                        //                   .of(context)
                        //                   .secondaryText,
                        //             ),
                        //             iconColor:
                        //             FlutterFlowTheme
                        //                 .of(context)
                        //                 .iconColor,
                        //             iconSize: 18.0,
                        //             elevation: 1.0,
                        //           ),
                        //           chipSpacing: 20.0,
                        //           multiselect: false,
                        //           alignment: WrapAlignment.start,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: TextFormField(
                            controller: tc.paymentLink.value,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Payment Link',
                              labelStyle: FlutterFlowTheme
                                  .of(context)
                                  .bodyText1,
                              hintText: 'Enter Payment Link',
                              hintStyle: FlutterFlowTheme
                                  .of(context)
                                  .subtitle2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .borderColor,
                                  width: 1.0,
                                ),
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .borderColor,
                                  width: 1.0,
                                ),
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius:
                                BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme
                                  .of(context)
                                  .alternate,
                              contentPadding:
                              const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                            ),
                            style:
                            FlutterFlowTheme
                                .of(context)
                                .bodyText1,
                            maxLines: null,
                            keyboardType: TextInputType.url,
                          ),
                        ),
                        // Obx(() {
                        //   if (tc.isUpi.value) {
                        //     return Padding(
                        //       padding: const EdgeInsetsDirectional.fromSTEB(
                        //           10.0, 10.0, 10.0, 0.0),
                        //       child: Row(
                        //         mainAxisSize: MainAxisSize.max,
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           Expanded(
                        //             child: Padding(
                        //               padding: const EdgeInsetsDirectional
                        //                   .fromSTEB(
                        //                   0.0, 0.0, 5.0, 0.0),
                        //               child: TextFormField(
                        //                 controller: tc.upi.value,
                        //                 obscureText: false,
                        //                 decoration: InputDecoration(
                        //                   labelText: 'UPI',
                        //                   labelStyle: FlutterFlowTheme
                        //                       .of(context)
                        //                       .bodyText1,
                        //                   hintText: 'Enter UPI',
                        //                   hintStyle: FlutterFlowTheme
                        //                       .of(context)
                        //                       .subtitle2,
                        //                   enabledBorder: OutlineInputBorder(
                        //                     borderSide: BorderSide(
                        //                       color: FlutterFlowTheme
                        //                           .of(context)
                        //                           .borderColor,
                        //                       width: 1.0,
                        //                     ),
                        //                     borderRadius:
                        //                     BorderRadius.circular(8.0),
                        //                   ),
                        //                   focusedBorder: OutlineInputBorder(
                        //                     borderSide: BorderSide(
                        //                       color: FlutterFlowTheme
                        //                           .of(context)
                        //                           .borderColor,
                        //                       width: 1.0,
                        //                     ),
                        //                     borderRadius:
                        //                     BorderRadius.circular(8.0),
                        //                   ),
                        //                   errorBorder: OutlineInputBorder(
                        //                     borderSide: const BorderSide(
                        //                       color: Color(0x00000000),
                        //                       width: 1.0,
                        //                     ),
                        //                     borderRadius:
                        //                     BorderRadius.circular(8.0),
                        //                   ),
                        //                   focusedErrorBorder: OutlineInputBorder(
                        //                     borderSide: const BorderSide(
                        //                       color: Color(0x00000000),
                        //                       width: 1.0,
                        //                     ),
                        //                     borderRadius:
                        //                     BorderRadius.circular(8.0),
                        //                   ),
                        //                   filled: true,
                        //                   fillColor: FlutterFlowTheme
                        //                       .of(context)
                        //                       .alternate,
                        //                   contentPadding:
                        //                   const EdgeInsetsDirectional.fromSTEB(
                        //                       20.0, 0.0, 0.0, 0.0),
                        //                 ),
                        //                 style:
                        //                 FlutterFlowTheme
                        //                     .of(context)
                        //                     .bodyText1,
                        //                 maxLines: null,
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     );
                        //   } else {
                        //     return const SizedBox();
                        //   }
                        // }),
                        // Obx(() {
                        //   if (!tc.isCheque.value) {
                        //     return Padding(
                        //       padding: const EdgeInsetsDirectional.fromSTEB(
                        //           10.0, 10.0, 10.0, 0.0),
                        //       child: TextFormField(
                        //         controller: tc.trans_id.value,
                        //         obscureText: false,
                        //         decoration: InputDecoration(
                        //           labelText: 'Transaction ID',
                        //           labelStyle: FlutterFlowTheme
                        //               .of(context)
                        //               .bodyText1,
                        //           hintText: 'Enter Transaction ID',
                        //           hintStyle: FlutterFlowTheme
                        //               .of(context)
                        //               .subtitle2,
                        //           enabledBorder: OutlineInputBorder(
                        //             borderSide: BorderSide(
                        //               color: FlutterFlowTheme
                        //                   .of(context)
                        //                   .borderColor,
                        //               width: 1.0,
                        //             ),
                        //             borderRadius:
                        //             BorderRadius.circular(8.0),
                        //           ),
                        //           focusedBorder: OutlineInputBorder(
                        //             borderSide: BorderSide(
                        //               color: FlutterFlowTheme
                        //                   .of(context)
                        //                   .borderColor,
                        //               width: 1.0,
                        //             ),
                        //             borderRadius:
                        //             BorderRadius.circular(8.0),
                        //           ),
                        //           errorBorder: OutlineInputBorder(
                        //             borderSide: const BorderSide(
                        //               color: Color(0x00000000),
                        //               width: 1.0,
                        //             ),
                        //             borderRadius:
                        //             BorderRadius.circular(8.0),
                        //           ),
                        //           focusedErrorBorder: OutlineInputBorder(
                        //             borderSide: const BorderSide(
                        //               color: Color(0x00000000),
                        //               width: 1.0,
                        //             ),
                        //             borderRadius:
                        //             BorderRadius.circular(8.0),
                        //           ),
                        //           filled: true,
                        //           fillColor: FlutterFlowTheme
                        //               .of(context)
                        //               .alternate,
                        //           contentPadding:
                        //           const EdgeInsetsDirectional.fromSTEB(
                        //               20.0, 0.0, 0.0, 0.0),
                        //         ),
                        //         style:
                        //         FlutterFlowTheme
                        //             .of(context)
                        //             .bodyText1,
                        //         maxLines: null,
                        //         keyboardType: TextInputType.number,
                        //       ),
                        //     );
                        //   } else {
                        //     return const SizedBox();
                        //   }
                        // }),
                        // Obx(() {
                        //   if(tc.isCheque.value)
                        //     {
                        //       return Padding(
                        //         padding: const EdgeInsetsDirectional.fromSTEB(
                        //             10.0, 10.0, 10.0, 0.0),
                        //         child: Row(
                        //           mainAxisSize: MainAxisSize.max,
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [
                        //             Expanded(
                        //               child: Padding(
                        //                 padding: const EdgeInsetsDirectional
                        //                     .fromSTEB(
                        //                     0.0, 0.0, 5.0, 0.0),
                        //                 child: TextFormField(
                        //                   controller: tc.chequeNo.value,
                        //                   obscureText: false,
                        //                   decoration: InputDecoration(
                        //                     labelText: 'Cheque no./ Transaction Id:',
                        //                     labelStyle: FlutterFlowTheme
                        //                         .of(context)
                        //                         .bodyText1,
                        //                     hintText: 'Enter Cheque Number',
                        //                     hintStyle: FlutterFlowTheme
                        //                         .of(context)
                        //                         .subtitle2,
                        //                     enabledBorder: OutlineInputBorder(
                        //                       borderSide: BorderSide(
                        //                         color: FlutterFlowTheme
                        //                             .of(context)
                        //                             .borderColor,
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     focusedBorder: OutlineInputBorder(
                        //                       borderSide: BorderSide(
                        //                         color: FlutterFlowTheme
                        //                             .of(context)
                        //                             .borderColor,
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     errorBorder: OutlineInputBorder(
                        //                       borderSide: const BorderSide(
                        //                         color: Color(0x00000000),
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     focusedErrorBorder: OutlineInputBorder(
                        //                       borderSide: const BorderSide(
                        //                         color: Color(0x00000000),
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     filled: true,
                        //                     fillColor: FlutterFlowTheme
                        //                         .of(context)
                        //                         .alternate,
                        //                     contentPadding:
                        //                     const EdgeInsetsDirectional.fromSTEB(
                        //                         20.0, 0.0, 0.0, 0.0),
                        //                   ),
                        //                   style:
                        //                   FlutterFlowTheme
                        //                       .of(context)
                        //                       .bodyText1,
                        //                   maxLines: null,
                        //                 ),
                        //               ),
                        //             ),
                        //             Expanded(
                        //               child: Padding(
                        //                 padding: const EdgeInsetsDirectional
                        //                     .fromSTEB(
                        //                     0.0, 0.0, 5.0, 0.0),
                        //                 child: TextFormField(
                        //                   controller: tc.chequeDate.value,
                        //                   obscureText: false,
                        //                   decoration: InputDecoration(
                        //                     labelText: 'Cheque Date',
                        //                     labelStyle: FlutterFlowTheme
                        //                         .of(context)
                        //                         .bodyText1,
                        //                     hintText: 'Enter Cheque Date',
                        //                     hintStyle: FlutterFlowTheme
                        //                         .of(context)
                        //                         .subtitle2,
                        //                     enabledBorder: OutlineInputBorder(
                        //                       borderSide: BorderSide(
                        //                         color: FlutterFlowTheme
                        //                             .of(context)
                        //                             .borderColor,
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     focusedBorder: OutlineInputBorder(
                        //                       borderSide: BorderSide(
                        //                         color: FlutterFlowTheme
                        //                             .of(context)
                        //                             .borderColor,
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     errorBorder: OutlineInputBorder(
                        //                       borderSide: const BorderSide(
                        //                         color: Color(0x00000000),
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     focusedErrorBorder: OutlineInputBorder(
                        //                       borderSide: const BorderSide(
                        //                         color: Color(0x00000000),
                        //                         width: 1.0,
                        //                       ),
                        //                       borderRadius:
                        //                       BorderRadius.circular(8.0),
                        //                     ),
                        //                     filled: true,
                        //                     fillColor: FlutterFlowTheme
                        //                         .of(context)
                        //                         .alternate,
                        //                     contentPadding:
                        //                     const EdgeInsetsDirectional.fromSTEB(
                        //                         20.0, 0.0, 0.0, 0.0),
                        //                   ),
                        //                   style:
                        //                   FlutterFlowTheme
                        //                       .of(context)
                        //                       .bodyText1,
                        //                   maxLines: null,
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       );
                        //     }else
                        //       {
                        //         return const SizedBox();
                        //       }
                        // }),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Funding mode of project',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Self'),
                                    ChipData('Bank'),
                                    ChipData('Both')
                                  ],
                                  onChanged: (val) {
                                    switch (val!.first.toString()) {
                                      case "Self":
                                        {
                                          tc.fundingMode.value = "Self";
                                          break;
                                        }
                                      case "Bank":
                                        {
                                          tc.fundingMode.value = "Bank";
                                          break;
                                        }
                                      case "Both":
                                        {
                                          tc.fundingMode.value = "Both";
                                          break;
                                        }
                                    }
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .borderColor,
                                    textStyle: FlutterFlowTheme
                                        .of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    iconColor: Colors.white,
                                    iconSize: 18.0,
                                    elevation: 1.0,
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .white,
                                    textStyle: FlutterFlowTheme
                                        .of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme
                                          .of(context)
                                          .secondaryText,
                                    ),
                                    iconColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .iconColor,
                                    iconSize: 18.0,
                                    elevation: 1.0,
                                  ),
                                  chipSpacing: 20.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Obx(() {
                          return Visibility(
                            visible: tc.fundingMode.value == "Self" ||
                                tc.fundingMode.value == "Both",
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: TextFormField(
                                        controller: tc.selfAmount.value,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Self Amount',
                                          labelStyle:
                                          FlutterFlowTheme
                                              .of(context)
                                              .bodyText1,
                                          hintText: 'Enter Amount',
                                          hintStyle:
                                          FlutterFlowTheme
                                              .of(context)
                                              .subtitle2,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .borderColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .borderColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                          FlutterFlowTheme
                                              .of(context)
                                              .alternate,
                                          contentPadding:
                                          const EdgeInsetsDirectional
                                              .fromSTEB(
                                              20.0, 0.0, 0.0, 0.0),
                                        ),
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
                                        maxLines: null,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                        Obx(() {
                          return Visibility(
                            visible: tc.fundingMode.value == "Bank" ||
                                tc.fundingMode.value == "Both",
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: tc.bankName.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Bank Name',
                                              labelStyle:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Bank Name',
                                              hintStyle:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyText1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: tc.loanAmount.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Loan Amount',
                                              labelStyle:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Loan Amount',
                                              hintStyle:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyText1,
                                            maxLines: null,
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: tc.loanAccount.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Loan Account',
                                              labelStyle:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Loan Account',
                                              hintStyle:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .of(
                                                      context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .bodyText1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      widget.onBackTab();
                                    },
                                    text: 'Back',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 30.0,
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme
                                          .of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme
                                          .of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .primaryText,
                                      ),
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  tc.submit();
                                  if(tc.nextPage.value)
                                  {
                                    widget.onNextTab();
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width *
                                          0.35,
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height *
                                          0.04,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .buttonColor,
                                        borderRadius: BorderRadius.circular(
                                            10.0),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Plot Details',
                                              style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .of(
                                                    context)
                                                    .btnText,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 100.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                indent: 10.0,
                                                endIndent: 10.0,
                                                color:
                                                FlutterFlowTheme
                                                    .of(context)
                                                    .btnText,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: FlutterFlowTheme
                                                  .of(context)
                                                  .btnText,
                                              size: 20.0,
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
                      ],
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
