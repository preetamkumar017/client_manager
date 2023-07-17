import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/decision_maker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DecisionMaker extends StatefulWidget {
  final VoidCallback onNextTab;
  final VoidCallback onBackTab;
   const DecisionMaker({Key? key, required this.onNextTab, required this.onBackTab}) : super(key: key);

  @override
  State<DecisionMaker> createState() => _DecisionMakerState();
}

class _DecisionMakerState extends State<DecisionMaker> {
  final dm = Get.put(DecisionMakerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 95.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme
            .of(context)
            .primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
            10.0, 10.0, 10.0, 0.0),
        child: Container(
          width:
          MediaQuery
              .of(context)
              .size
              .width * 0.666,
          height: 95.0,
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
                      0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        'Decision Maker',
                        style:
                        FlutterFlowTheme
                            .of(context)
                            .title3,
                      ),
                    ],
                  ),
                ),
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
                              .fromSTEB(10.0, 10.0,
                              10.0, 0.0),
                          child: Row(
                            mainAxisSize:
                            MainAxisSize.max,
                            children: [
                              Obx(() {
                                return Theme(
                                  data: ThemeData(
                                    checkboxTheme:
                                    CheckboxThemeData(
                                      shape:
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            2.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                    FlutterFlowTheme
                                        .of(
                                        context)
                                        .iconColor,
                                  ),
                                  child: Checkbox(
                                    value: dm.dmSameAsClient.value,
                                    onChanged:(newValue) async {
                                          dm.dmSameAsClientAdd(newValue);
                                          dm.dmSameAsClient.value = newValue!;
                                        },
                                    activeColor:
                                    FlutterFlowTheme
                                        .of(
                                        context)
                                        .borderColor,
                                  ),
                                );
                              }),
                              Text(
                                'Same as Client Information',
                                style:
                                FlutterFlowTheme
                                    .of(
                                    context)
                                    .bodyText1,
                              ),
                            ],
                          ),
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
                                    keyboardType: TextInputType.phone,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: dm.email.value,
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
                                  keyboardType: TextInputType.emailAddress,
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
                                  // maxLength: 10,
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
                                  keyboardType: TextInputType.number,
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
                                  // maxLength: 6,
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
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
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
                                      widget.onBackTab();
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
                                      if(dm.nextPage.value)
                                        {
                                          widget.onNextTab();
                                        }
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
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional
                                            .fromSTEB(
                                            5.0,
                                            0.0,
                                            5.0,
                                            0.0),
                                        child: Row(
                                          mainAxisSize:
                                          MainAxisSize
                                              .max,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            Text(
                                              'Payee',
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
                                            SizedBox(
                                              height:
                                              100.0,
                                              child:
                                              VerticalDivider(
                                                thickness:
                                                1.0,
                                                indent:
                                                10.0,
                                                endIndent:
                                                10.0,
                                                color: FlutterFlowTheme
                                                    .of(
                                                    context)
                                                    .btnText,
                                              ),
                                            ),
                                            Icon(
                                              Icons
                                                  .arrow_forward,
                                              color: FlutterFlowTheme
                                                  .of(
                                                  context)
                                                  .btnText,
                                              size: 20.0,
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
