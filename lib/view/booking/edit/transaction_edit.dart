import 'package:client_manager/view/flutter_flow/flutter_flow_choice_chips.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_manager/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/transaction.dart';
import 'package:client_manager/models/booking_model/booking_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionEdit extends StatefulWidget {
  const TransactionEdit({Key? key}) : super(key: key);

  @override
  State<TransactionEdit> createState() => _TransactionEditState();
}

class _TransactionEditState extends State<TransactionEdit> {
  final tc = Get.put(TransactionEditController());

  final bkc = Get.put(BookingDetailsController());
  late TransDetail? data;

  @override
  void initState() {
    super.initState();

    data = bkc.bookingDetails.value.result!.transDetail;
    tc.bookingId.value = bkc.bookingDetails.value.result!.clientInfo!.id!;

    if (data != null) {
      tc.id.value = data!.id!;
      tc.anyOffer.value.text = data!.offerAmt!;
      tc.quotationTypeList.value = [data!.quotationType!];
      tc.discountRate.value.text = data!.finalRate!;
      tc.amount.value.text = data!.finalAmt!;
      tc.inWords.value.text = data!.finalAmtInWord!;
      tc.nonRefundable.value.text = data!.paidBookingAmt!;
      // tc.upi.value.text = data!.upiId!;
      tc.paymentLink.value.text = data!.paymentLink!;
      // tc.chequeNo.value.text = data!.chequeNo!;
      // tc.chequeDate.value.text = data!.chequeData!;
      tc.selfAmount.value.text = data!.selfAmt!;
      tc.bankName.value.text = data!.bankName!;
      tc.loanAmount.value.text = data!.loanAmt!;
      tc.loanAccount.value.text = data!.loanAccNo!;

      tc.paymentMode.value = data!.paymentMode!.replaceAll('_', '/');
      tc.paymentModeList.value = [data!.paymentMode!];
      if (tc.paymentMode.value == "UPI") {
        tc.isUpi.value = true;
      } else if (tc.paymentMode.value == "NEFT/RTGS/IMPS") {
        tc.isNeft.value = true;
      } else if (tc.paymentMode.value == "cards") {
        tc.isCards.value = true;
      } else if (tc.paymentMode.value == "Cheque") {
        tc.isCheque.value = true;
      }

      tc.fundingModeList.value = [data!.fundingMode!];
      tc.fundingMode.value = data!.fundingMode!;



      tc.quotationTypeList.value = [data!.quotationType!];
      tc.fundingMode.value = data!.fundingMode!;
      tc.quotationRate.value  = data!.quotationType!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme
                .of(context)
                .primaryBackground,
          ),
          child: ListView(
            children: [

              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 20, top: 10),
                child: Stack(
                  children: [

                    IconButton(onPressed: () {
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
                            'Edit Transaction Details',
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
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0,
                              0.0),
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
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
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
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          initialized: true,
                                          initiallySelected: tc.quotationTypeList,
                                          options: const [
                                            ChipData(
                                                'Standard', Icons.star_rounded),
                                            ChipData(
                                                'Premium', Icons.star_rounded),
                                            ChipData(
                                                'Luxury', Icons.star_rounded),
                                            ChipData('Ultra Luxury',
                                                Icons.star_rounded)
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
                                                  tc.quotationRate.value =
                                                  "Premium";
                                                  break;
                                                }
                                              case "Luxury":
                                                {
                                                  tc.quotationRate.value = "Luxury";
                                                  break;
                                                }
                                              case "Ultra Luxury":
                                                {
                                                  tc.quotationRate.value = "Ultra Luxury";
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
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
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
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .of(context)
                                                    .borderColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
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
                                              .fromSTEB(
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
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
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
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                //           initialized: true,
                                //           initiallySelected: tc.paymentModeList,
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
                                //
                                //                   break;
                                //                 }
                                //               case "NEFT/RTGS/IMPS":
                                //                 {
                                //                   tc.paymentMode.value = "NEFT/RTGS/IMPS";
                                //                   tc.isUpi.value = false;
                                //                   tc.isCheque.value = false;
                                //
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
                                  padding: const EdgeInsetsDirectional
                                      .fromSTEB(
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
                                  ),
                                ),
                                // Obx(() {
                                //   if (tc.isUpi.value) {
                                //     return Padding(
                                //       padding: const EdgeInsetsDirectional
                                //           .fromSTEB(
                                //           10.0, 10.0, 10.0, 0.0),
                                //       child: Row(
                                //         mainAxisSize: MainAxisSize.max,
                                //         mainAxisAlignment: MainAxisAlignment
                                //             .center,
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
                                //                   const EdgeInsetsDirectional
                                //                       .fromSTEB(
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
                                //
                                //         ],
                                //       ),
                                //     );
                                //   } else {
                                //     return const SizedBox();
                                //   }
                                // }),
                                // Obx(() {
                                //   if(!tc.isCheque.value)
                                //     {
                                //       return Padding(
                                //         padding: const EdgeInsetsDirectional
                                //             .fromSTEB(
                                //             10.0, 10.0, 10.0, 0.0),
                                //         child: TextFormField(
                                //           controller: tc.trans_id.value,
                                //           obscureText: false,
                                //           decoration: InputDecoration(
                                //             labelText: 'Transaction ID',
                                //             labelStyle: FlutterFlowTheme
                                //                 .of(context)
                                //                 .bodyText1,
                                //             hintText: 'Enter Transaction ID',
                                //             hintStyle: FlutterFlowTheme
                                //                 .of(context)
                                //                 .subtitle2,
                                //             enabledBorder: OutlineInputBorder(
                                //               borderSide: BorderSide(
                                //                 color: FlutterFlowTheme
                                //                     .of(context)
                                //                     .borderColor,
                                //                 width: 1.0,
                                //               ),
                                //               borderRadius:
                                //               BorderRadius.circular(8.0),
                                //             ),
                                //             focusedBorder: OutlineInputBorder(
                                //               borderSide: BorderSide(
                                //                 color: FlutterFlowTheme
                                //                     .of(context)
                                //                     .borderColor,
                                //                 width: 1.0,
                                //               ),
                                //               borderRadius:
                                //               BorderRadius.circular(8.0),
                                //             ),
                                //             errorBorder: OutlineInputBorder(
                                //               borderSide: const BorderSide(
                                //                 color: Color(0x00000000),
                                //                 width: 1.0,
                                //               ),
                                //               borderRadius:
                                //               BorderRadius.circular(8.0),
                                //             ),
                                //             focusedErrorBorder: OutlineInputBorder(
                                //               borderSide: const BorderSide(
                                //                 color: Color(0x00000000),
                                //                 width: 1.0,
                                //               ),
                                //               borderRadius:
                                //               BorderRadius.circular(8.0),
                                //             ),
                                //             filled: true,
                                //             fillColor: FlutterFlowTheme
                                //                 .of(context)
                                //                 .alternate,
                                //             contentPadding:
                                //             const EdgeInsetsDirectional.fromSTEB(
                                //                 20.0, 0.0, 0.0, 0.0),
                                //           ),
                                //           style:
                                //           FlutterFlowTheme
                                //               .of(context)
                                //               .bodyText1,
                                //           maxLines: null,
                                //         ),
                                //       );
                                //     }else
                                //       {
                                //         return const SizedBox();
                                //       }
                                // }),
                                // Obx(() {
                                //   if (tc.isCheque.value) {
                                //     return Padding(
                                //       padding: const EdgeInsetsDirectional
                                //           .fromSTEB(
                                //           10.0, 10.0, 10.0, 0.0),
                                //       child: Row(
                                //         mainAxisSize: MainAxisSize.max,
                                //         mainAxisAlignment: MainAxisAlignment
                                //             .center,
                                //         children: [
                                //           Expanded(
                                //             child: Padding(
                                //               padding: const EdgeInsetsDirectional
                                //                   .fromSTEB(
                                //                   0.0, 0.0, 5.0, 0.0),
                                //               child: TextFormField(
                                //                 controller: tc.chequeNo.value,
                                //                 obscureText: false,
                                //                 decoration: InputDecoration(
                                //                   labelText: 'Cheque no./ Transaction Id:',
                                //                   labelStyle: FlutterFlowTheme
                                //                       .of(context)
                                //                       .bodyText1,
                                //                   hintText: 'Enter Cheque Number',
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
                                //                   const EdgeInsetsDirectional
                                //                       .fromSTEB(
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
                                //           Expanded(
                                //             child: Padding(
                                //               padding: const EdgeInsetsDirectional
                                //                   .fromSTEB(
                                //                   0.0, 0.0, 5.0, 0.0),
                                //               child: TextFormField(
                                //                 controller: tc.chequeDate.value,
                                //                 obscureText: false,
                                //                 decoration: InputDecoration(
                                //                   labelText: 'Cheque Date',
                                //                   labelStyle: FlutterFlowTheme
                                //                       .of(context)
                                //                       .bodyText1,
                                //                   hintText: 'Enter Cheque Date',
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
                                //                   const EdgeInsetsDirectional
                                //                       .fromSTEB(
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
                                          initialized: true,
                                          initiallySelected: tc.fundingModeList,
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
                                      padding: const EdgeInsetsDirectional
                                          .fromSTEB(
                                          10.0, 10.0, 10.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
                                              10.0, 10.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 0.0, 5.0, 0.0),
                                                  child: TextFormField(
                                                    controller: tc.bankName
                                                        .value,
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
                                                        BorderRadius.circular(
                                                            8.0),
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
                                                        BorderRadius.circular(
                                                            8.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                              0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                              0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
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
                                                      .fromSTEB(
                                                      0.0, 0.0, 5.0, 0.0),
                                                  child: TextFormField(
                                                    controller: tc.loanAmount
                                                        .value,
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
                                                        BorderRadius.circular(
                                                            8.0),
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
                                                        BorderRadius.circular(
                                                            8.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                              0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                              0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
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
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
                                              10.0, 10.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 0.0, 5.0, 0.0),
                                                  child: TextFormField(
                                                    controller: tc.loanAccount
                                                        .value,
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
                                                        BorderRadius.circular(
                                                            8.0),
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
                                                        BorderRadius.circular(
                                                            8.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                              0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                              0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
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
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            text: 'Back',
                                            options: FFButtonOptions(
                                              width: 100.0,
                                              height: 30.0,
                                              padding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                              iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                              borderRadius: BorderRadius
                                                  .circular(8.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          tc.submit();
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
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
                                          child: Text(
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
            ],
          ),
        ),
      ),
    );
  }
}
