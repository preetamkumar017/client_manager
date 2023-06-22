import 'dart:developer';

import 'package:client_booking/view/flutter_flow/flutter_flow_radio_button.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_booking/view_models/controller/booking/pay_now_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PayNowView extends StatefulWidget {
  const PayNowView({Key? key}) : super(key: key);

  @override
  _PayNowViewState createState() => _PayNowViewState();
}

class _PayNowViewState extends State<PayNowView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final pnController = Get.put(PayNowController());

  @override
  void initState() {
    super.initState();
    pnController.setScreenData(Get.arguments);
    pnController.signScreenData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Text(
                      'Pay Now',
                      style: FlutterFlowTheme
                          .of(context)
                          .headlineSmall,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'Pay the required amount to complete your booking',
                    style: FlutterFlowTheme
                        .of(context)
                        .bodyMedium,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme
                            .of(context)
                            .secondaryBackground,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 5, 0, 0),
                              child: Form(
                                key: pnController.formKey.value,
                                // autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                      const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 20, 0, 0),
                                        child: Text(
                                          'Payment Mode:',
                                          style: FlutterFlowTheme
                                              .of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                      const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 10, 0, 0),
                                        child: FlutterFlowRadioButton(
                                          initialValue: 'UPI/Link',
                                          options: [
                                            'UPI/Link',
                                            'NEFT/RTGS/IMPS'
                                          ].toList(),
                                          onChanged: (val) {
                                            if (val == 'UPI/Link') {
                                              pnController.setUpi(true);
                                            } else {
                                              pnController.setUpi(false);
                                            }
                                          },
                                          // controller: _model
                                          //     .radioButtonValueController ??=
                                          //     FormFieldController<String>(null),
                                          optionHeight: 40,
                                          // optionWidth: MediaQuery.of(context)
                                          //     .size
                                          //     .width *
                                          //     0.35,
                                          textStyle:
                                          FlutterFlowTheme
                                              .of(context)
                                              .bodyMedium,
                                          buttonPosition:
                                          RadioButtonPosition.left,
                                          direction: Axis.horizontal,
                                          radioButtonColor:
                                          FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                          inactiveRadioButtonColor:
                                          FlutterFlowTheme
                                              .of(context)
                                              .iconbluecolour2,
                                          toggleable: false,
                                          horizontalAlignment:
                                          WrapAlignment.spaceBetween,
                                          verticalAlignment:
                                          WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ),
                                    Obx(() {
                                      return Visibility(
                                        visible: pnController.getUpi,
                                        child: Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 20, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: Text(
                                                    'Click the below button to make a payment',
                                                    style:
                                                    FlutterFlowTheme
                                                        .of(context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: _launchUrl,
                                                    text:
                                                    'Rs. ${pnController
                                                        .amount}/- Pay Now',
                                                    icon: const Icon(
                                                      Icons.credit_card_rounded,
                                                      size: 18,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 220,
                                                      height: 40,
                                                      padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 0, 0),
                                                      iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0, 0, 0, 0),
                                                      color: FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .buttonColor,
                                                      textStyle:
                                                      FlutterFlowTheme
                                                          .of(
                                                          context)
                                                          .bodyLarge,
                                                      elevation: 2,
                                                      borderSide: const BorderSide(
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(8),
                                                    ),
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
                                        visible: !pnController.getUpi,
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 20, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                                child: Text(
                                                  'Net Banking',
                                                  style:
                                                  FlutterFlowTheme
                                                      .of(context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                const AlignmentDirectional(
                                                    0, 0),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20, 10, 20, 0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 2,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                    ),
                                                    child: Container(
                                                      width:
                                                      MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width *
                                                          0.9,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                20,
                                                                10,
                                                                20),
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                          20,
                                                                          height:
                                                                          20,
                                                                          decoration:
                                                                          BoxDecoration(
                                                                            color:
                                                                            FlutterFlowTheme
                                                                                .of(
                                                                                context)
                                                                                .iconblueContainer,
                                                                            borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                5),
                                                                            shape:
                                                                            BoxShape
                                                                                .rectangle,
                                                                          ),
                                                                          child:
                                                                          Icon(
                                                                            Icons
                                                                                .date_range_outlined,
                                                                            color:
                                                                            FlutterFlowTheme
                                                                                .of(
                                                                                context)
                                                                                .iconbluecolour,
                                                                            size:
                                                                            15,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .max,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Text(
                                                                                'Acc. Holder Name',
                                                                                style: FlutterFlowTheme
                                                                                    .of(
                                                                                    context)
                                                                                    .titleSmall,
                                                                              ),
                                                                              Text(
                                                                                'Uk Concept Designer',
                                                                                style: FlutterFlowTheme
                                                                                    .of(
                                                                                    context)
                                                                                    .bodyMedium,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                      const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                                      child: Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                            20,
                                                                            height:
                                                                            20,
                                                                            decoration:
                                                                            BoxDecoration(
                                                                              color:
                                                                              FlutterFlowTheme
                                                                                  .of(
                                                                                  context)
                                                                                  .iconblueContainer,
                                                                              borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                  5),
                                                                              shape:
                                                                              BoxShape
                                                                                  .rectangle,
                                                                            ),
                                                                            child:
                                                                            Icon(
                                                                              Icons
                                                                                  .format_list_numbered,
                                                                              color:
                                                                              FlutterFlowTheme
                                                                                  .of(
                                                                                  context)
                                                                                  .iconbluecolour,
                                                                              size:
                                                                              15,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional
                                                                                .fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                            Column(
                                                                              mainAxisSize:
                                                                              MainAxisSize
                                                                                  .max,
                                                                              crossAxisAlignment:
                                                                              CrossAxisAlignment
                                                                                  .start,
                                                                              children: [
                                                                                Text(
                                                                                  'Acc. Number',
                                                                                  style: FlutterFlowTheme
                                                                                      .of(
                                                                                      context)
                                                                                      .titleSmall,
                                                                                ),
                                                                                Text(
                                                                                  '50200011762575',
                                                                                  style: FlutterFlowTheme
                                                                                      .of(
                                                                                      context)
                                                                                      .bodyMedium,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                          20,
                                                                          height:
                                                                          20,
                                                                          decoration:
                                                                          BoxDecoration(
                                                                            color:
                                                                            FlutterFlowTheme
                                                                                .of(
                                                                                context)
                                                                                .iconblueContainer,
                                                                            borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                5),
                                                                            shape:
                                                                            BoxShape
                                                                                .rectangle,
                                                                          ),
                                                                          child:
                                                                          Icon(
                                                                            Icons
                                                                                .done_outlined,
                                                                            color:
                                                                            FlutterFlowTheme
                                                                                .of(
                                                                                context)
                                                                                .iconbluecolour,
                                                                            size:
                                                                            15,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .max,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Text(
                                                                                'Bank Name',
                                                                                style: FlutterFlowTheme
                                                                                    .of(
                                                                                    context)
                                                                                    .titleSmall,
                                                                              ),
                                                                              Text(
                                                                                'HDFC Bank',
                                                                                style: FlutterFlowTheme
                                                                                    .of(
                                                                                    context)
                                                                                    .bodyMedium,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                      const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                                      child: Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                            20,
                                                                            height:
                                                                            20,
                                                                            decoration:
                                                                            BoxDecoration(
                                                                              color:
                                                                              FlutterFlowTheme
                                                                                  .of(
                                                                                  context)
                                                                                  .iconblueContainer,
                                                                              borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                  5),
                                                                              shape:
                                                                              BoxShape
                                                                                  .rectangle,
                                                                            ),
                                                                            child:
                                                                            Icon(
                                                                              Icons
                                                                                  .done_outlined,
                                                                              color:
                                                                              FlutterFlowTheme
                                                                                  .of(
                                                                                  context)
                                                                                  .iconbluecolour,
                                                                              size:
                                                                              15,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional
                                                                                .fromSTEB(
                                                                                5,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                            Column(
                                                                              mainAxisSize:
                                                                              MainAxisSize
                                                                                  .max,
                                                                              crossAxisAlignment:
                                                                              CrossAxisAlignment
                                                                                  .start,
                                                                              children: [
                                                                                Text(
                                                                                  'IFSC Code',
                                                                                  style: FlutterFlowTheme
                                                                                      .of(
                                                                                      context)
                                                                                      .titleSmall,
                                                                                ),
                                                                                Text(
                                                                                  'HDFC0003687',
                                                                                  style: FlutterFlowTheme
                                                                                      .of(
                                                                                      context)
                                                                                      .bodyMedium,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
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
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                    Padding(
                                      padding: const EdgeInsetsDirectional
                                          .fromSTEB(0, 20, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(
                                                0, 0),
                                            child: Text(
                                              'Transaction Id',
                                              style:
                                              FlutterFlowTheme
                                                  .of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional
                                                .fromSTEB(10, 10, 10, 0),
                                            child: TextFormField(
                                              controller: pnController.tranceId.value,
                                              autofocus: true,
                                              obscureText: false,
                                              keyboardType: TextInputType.number,
                                              decoration: InputDecoration(
                                                labelText: 'Transaction Id',
                                                labelStyle:
                                                FlutterFlowTheme
                                                    .of(
                                                    context)
                                                    .bodyMedium,
                                                hintText:
                                                'Enter Transaction Id',
                                                hintStyle:
                                                FlutterFlowTheme
                                                    .of(
                                                    context)
                                                    .labelSmall,
                                                enabledBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .borderColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8),
                                                ),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .buttonColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8),
                                                ),
                                                errorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .error,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                    FlutterFlowTheme
                                                        .of(
                                                        context)
                                                        .error,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8),
                                                ),
                                                contentPadding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    20, 0, 0, 0),
                                              ),
                                              style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyMedium,
                                              validator:(value) {
                                                if (value == "") {
                                                  return 'this filed is required';
                                                } else if (value!.length < 10) {
                                                  return 'Enter valid Transaction id';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                      const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 30, 0, 20),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            final isValid = pnController.formKey.value.currentState!.validate();
                                            if (!isValid) {
                                              return;
                                            }else
                                              {
                                                pnController.submit();
                                              }
                                          },
                                          text: 'Done with Payment',
                                          icon: Icon(
                                            Icons.done_all_outlined,
                                            color: FlutterFlowTheme
                                                .of(context)
                                                .white,
                                            size: 15,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40,
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(24, 0, 24, 0),
                                            iconPadding:
                                            const EdgeInsetsDirectional
                                                .fromSTEB(0, 0, 0, 0),
                                            color: FlutterFlowTheme
                                                .of(context)
                                                .buttonColor,
                                            textStyle:
                                            FlutterFlowTheme
                                                .of(context)
                                                .bodyLarge,
                                            elevation: 3,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    log(pnController.getLink);
    if (!await launchUrl(Uri.parse(pnController.getLink),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch ${pnController.getLink}');
    }
  }
}
