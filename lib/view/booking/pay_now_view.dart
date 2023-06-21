
import 'package:client_booking/view/flutter_flow/flutter_flow_radio_button.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class PayNowView extends StatefulWidget {
  const PayNowView({Key? key}) : super(key: key);

  @override
  _PayNowViewState createState() => _PayNowViewState();
}

class _PayNowViewState extends State<PayNowView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
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
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'Pay the required amount to complete your booking',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Form(
                                // key: _model.formKey,
                                // autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Text(
                                          'Payment Mode:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            'UPI/Link',
                                            'NEFT/RTGS/IMPS'
                                          ].toList(),
                                          onChanged: (val) => setState(() {}),
                                          // controller: _model
                                          //     .radioButtonValueController ??=
                                          //     FormFieldController<String>(null),
                                          optionHeight: 40,
                                          // optionWidth: MediaQuery.of(context)
                                          //     .size
                                          //     .width *
                                          //     0.35,
                                          textStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          buttonPosition:
                                          RadioButtonPosition.left,
                                          direction: Axis.horizontal,
                                          radioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .borderColor,
                                          inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .iconbluecolour2,
                                          toggleable: false,
                                          horizontalAlignment:
                                          WrapAlignment.spaceBetween,
                                          verticalAlignment:
                                          WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Text(
                                                'Click the below button to make a payment',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Rs. 3,00,000/- Pay Now',
                                                icon: const Icon(
                                                  Icons.credit_card_rounded,
                                                  size: 18,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 220,
                                                  height: 40,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  iconPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .buttonColor,
                                                  textStyle:
                                                  FlutterFlowTheme.of(
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(0, 0),
                                            child: Text(
                                              'Net Banking',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(20, 10, 20, 0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      0.9,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
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
                                                            .fromSTEB(10,
                                                            20, 10, 20),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
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
                                                                      width: 20,
                                                                      height:
                                                                      20,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconblueContainer,
                                                                        borderRadius:
                                                                        BorderRadius.circular(5),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                      child:
                                                                      Icon(
                                                                        Icons
                                                                            .date_range_outlined,
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Acc. Holder Name',
                                                                            style:
                                                                            FlutterFlowTheme.of(context).titleSmall,
                                                                          ),
                                                                          Text(
                                                                            'Uk Concept Designer',
                                                                            style:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
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
                                                                          FlutterFlowTheme.of(context).iconblueContainer,
                                                                          borderRadius:
                                                                          BorderRadius.circular(5),
                                                                          shape:
                                                                          BoxShape.rectangle,
                                                                        ),
                                                                        child:
                                                                        Icon(
                                                                          Icons
                                                                              .format_list_numbered,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).iconbluecolour,
                                                                          size:
                                                                          15,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Column(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Acc. Number',
                                                                              style: FlutterFlowTheme.of(context).titleSmall,
                                                                            ),
                                                                            Text(
                                                                              '50200011762575',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
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
                                                                      width: 20,
                                                                      height:
                                                                      20,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconblueContainer,
                                                                        borderRadius:
                                                                        BorderRadius.circular(5),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                      child:
                                                                      Icon(
                                                                        Icons
                                                                            .done_outlined,
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                        CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Bank Name',
                                                                            style:
                                                                            FlutterFlowTheme.of(context).titleSmall,
                                                                          ),
                                                                          Text(
                                                                            'HDFC Bank',
                                                                            style:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
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
                                                                          FlutterFlowTheme.of(context).iconblueContainer,
                                                                          borderRadius:
                                                                          BorderRadius.circular(5),
                                                                          shape:
                                                                          BoxShape.rectangle,
                                                                        ),
                                                                        child:
                                                                        Icon(
                                                                          Icons
                                                                              .done_outlined,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).iconbluecolour,
                                                                          size:
                                                                          15,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Column(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'IFSC Code',
                                                                              style: FlutterFlowTheme.of(context).titleSmall,
                                                                            ),
                                                                            Text(
                                                                              'HDFC0003687',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(0, 0),
                                            child: Text(
                                              'Transaction Id',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                10, 10, 10, 0),
                                            child: TextFormField(
                                              // controller: _model.textController,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Transaction Id',
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                                hintText:
                                                'Enter Transaction Id',
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall,
                                                enabledBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .borderColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                ),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .buttonColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                ),
                                                contentPadding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 0, 0),
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              // validator: _model
                                              //     .textControllerValidator
                                              //     .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 20),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Done with Payment',
                                          icon: Icon(
                                            Icons.done_all_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            size: 15,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40,
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                24, 0, 24, 0),
                                            iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                            color: FlutterFlowTheme.of(context)
                                                .buttonColor,
                                            textStyle:
                                            FlutterFlowTheme.of(context)
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
}
