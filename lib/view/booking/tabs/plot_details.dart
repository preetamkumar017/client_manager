import 'dart:developer';

import 'package:client_booking/view/flutter_flow/flutter_flow_choice_chips.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/plot_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlotDetails extends StatefulWidget {
  final VoidCallback onNextTab;
  final VoidCallback onBackTab;
  const PlotDetails({Key? key, required this.onNextTab, required this.onBackTab}) : super(key: key);

  @override
  State<PlotDetails> createState() => _PlotDetailsState();
}

class _PlotDetailsState extends State<PlotDetails> {
  PlotDetailsController pdc = Get.put(PlotDetailsController());
  @override
  Widget build(BuildContext context) {
    log(pdc.roads.value);
    return Container(
      width: 100.0,
      height: 0.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.666,
          height: 95.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            borderRadius: BorderRadius.circular(10.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
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
                        'Plot Details',
                        style: FlutterFlowTheme.of(context).title3,
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
                                    controller: pdc.location.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Plot Location',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      hintText: 'Enter Plot Location',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
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
                                      fillColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
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
                                    controller: pdc.plotNumber.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Plot No',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      hintText: 'Enter Plot No',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
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
                                      fillColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                    maxLines: null,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: pdc.plotSize.value,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Plot Size',
                                    labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                    hintText: 'Enter Plot Size',
                                    hintStyle:
                                    FlutterFlowTheme.of(context).subtitle2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .borderColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
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
                                    FlutterFlowTheme.of(context).alternate,
                                    contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
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
                            children: [
                              Text(
                                'Plot Facing',
                                style: FlutterFlowTheme.of(context).bodyText1,
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
                                    ChipData('North', Icons.north),
                                    ChipData('South', Icons.south),
                                    ChipData('East', Icons.east),
                                    ChipData('West', Icons.west)
                                  ],
                                  onChanged: (val){
                                    switch(val!.first.toString())
                                    {
                                      case "North":
                                        {
                                          pdc.plotFacing.value = "North";
                                          break;
                                        }
                                      case "South":
                                        {
                                          pdc.plotFacing.value = "South";
                                          break;
                                        }
                                      case "East":
                                        {
                                          pdc.plotFacing.value = "East";
                                          break;
                                        }
                                      case "West":
                                        {
                                          pdc.plotFacing.value = "West";
                                          break;
                                        }

                                    }
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .borderColor,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    iconColor:
                                    FlutterFlowTheme.of(context).iconColor,
                                    iconSize: 18.0,
                                    elevation: 1.0,
                                  ),
                                  chipSpacing: 10.0,
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
                            children: [
                              Text(
                                'Number of Roads',
                                style: FlutterFlowTheme.of(context).bodyText1,
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
                                  initiallySelected: [pdc.roadss.value],
                                  options: const [
                                    ChipData('One', Icons.circle),
                                    ChipData('Two', Icons.circle),
                                    ChipData('Three', Icons.circle)
                                  ],
                                  onChanged: (val) {
                                    switch(val!.first.toString())
                                    {
                                      case "One":
                                        {
                                          pdc.roads.value = "1";
                                          break;
                                        }
                                      case "Two":
                                        {
                                          pdc.roads.value = "2";
                                          break;
                                        }
                                      case "Three":
                                        {
                                          pdc.roads.value = "3";
                                          break;
                                        }
                                    }
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .borderColor,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                    iconColor:
                                    FlutterFlowTheme.of(context).iconColor,
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
                                    controller: pdc.depth.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                      'Depth of the plot from road level',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      hintText: 'Enter Depth',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .borderColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
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
                                      fillColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style:
                                    FlutterFlowTheme.of(context).bodyText1,
                                    maxLines: null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
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
                                  pdc.submit();
                                  if(pdc.nextPage.value)
                                  {
                                    widget.onNextTab();
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      height: MediaQuery.of(context).size.height *
                                          0.04,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .buttonColor,
                                        borderRadius: BorderRadius.circular(10.0),
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
                                              'Attach Doc',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(
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
                                                FlutterFlowTheme.of(context)
                                                    .btnText,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: FlutterFlowTheme.of(context)
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
