// ignore_for_file: deprecated_member_use_from_same_package

import 'dart:convert';
import 'package:client_booking/view/flutter_flow/flutter_flow_radio_button.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_booking/models/booking_model/booking_details_model.dart';
import 'package:client_booking/view_models/services/common_methods.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientInfoEdit extends StatefulWidget {

  const ClientInfoEdit({Key? key}) : super(key: key);

  @override
  State<ClientInfoEdit> createState() => _ClientInfoEditState();
}

class _ClientInfoEditState extends State<ClientInfoEdit> {
  final cIC = Get.put(ClientInfoController());

  final bookingDetailsController = Get.put(BookingDetailsController());
  late ClientInfo clientinfo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clientinfo =
    bookingDetailsController.bookingDetails.value.result!.clientInfo!;
    assign();
  }

  void assign() {
    cIC.lastId.value = clientinfo.id ?? "";
    cIC.clientName.value.text = clientinfo.clientName ?? "";
    cIC.fathersName.value.text = clientinfo.spouseName ?? "";
    cIC.age.value.text = clientinfo.age ?? "";
    cIC.occupation.value.text = clientinfo.occupation ?? "";
    cIC.mobile.value.text = clientinfo.mobileNo ?? "";
    cIC.email.value.text = clientinfo.emailId ?? "";
    cIC.pan.value.text = clientinfo.panNo ?? "";
    cIC.aadhaar.value.text = clientinfo.aadharNo ?? "";

    cIC.gender.value = clientinfo.gender ?? "";

    var permanent = jsonDecode(clientinfo.permanentAddr ?? '{"p_hno":"","p_street":"","p_landmark":"","p_city":"","p_state":"","p_pincode":""}');
    //permanent
    cIC.permanentHouseNo.value.text = permanent['p_hno'];
    cIC.permanentColony.value.text = permanent['p_street'];
    cIC.permanentLandmark.value.text = permanent['p_landmark'];
    cIC.permanentCity.value.text = permanent['p_city'];
    cIC.permanentState.value.text = permanent['p_state'];
    cIC.permanentPin.value.text = permanent['p_pincode'];
    //present
    var present = jsonDecode(clientinfo.presentAddr ?? '{"r_hno":"","r_street":"","r_landmark":"","r_city":"","r_state":"","r_pincode":""}');
    cIC.presentHouseNo.value.text = present['r_hno'];
    cIC.presentColony.value.text = present['r_street'];
    cIC.presentLandmark.value.text = present['r_landmark'];
    cIC.presentCity.value.text = present['r_city'];
    cIC.presentState.value.text = present['r_state'];
    cIC.presentPin.value.text = present['r_pincode'];
    var officeAddr = jsonDecode(clientinfo.officeAddr ?? '{"o_hno":"","o_street":"","o_landmark":"","o_city":"","o_state":"","o_pincode":""}');

    ///office
    cIC.officeHouseNo.value.text = officeAddr['o_hno'];
    cIC.officeColony.value.text = officeAddr['o_street'];
    cIC.officeLandmark.value.text = officeAddr['o_landmark'];
    cIC.officeCity.value.text = officeAddr['o_city'];
    cIC.officeState.value.text = officeAddr['o_state'];
    cIC.officePin.value.text = officeAddr['o_pincode'];

    cIC.bookingAmount.value = clientinfo.bookingAmt!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Stack(
                      children:[
                        IconButton(onPressed: (){
                          Get.back();
                        }, icon:  Icon(Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).iconColor)),
                        Padding(
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Edit Client Information',
                              style: FlutterFlowTheme
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
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Form(
                      autovalidateMode: AutovalidateMode.disabled,
                      key: cIC.formKey.value,
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
                                      controller:
                                      cIC.clientName.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Client Name',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.fathersName.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Father Name',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller: cIC.age.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter Age',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                      keyboardType: TextInputType.number,
                                      //maxLength: 2,
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
                                    controller:
                                    cIC.occupation.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Occupation',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowRadioButton(
                                      initialValue: capitalize(
                                          cIC.gender.toString()),
                                      options: ['Male', 'Female'].toList(),
                                      onChanged: (val) {
                                        cIC.gender.value = val!;
                                      },
                                      optionHeight: 25,
                                      textStyle: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .secondaryText,
                                      ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                      FlutterFlowTheme
                                          .of(context)
                                          .borderColor,
                                      inactiveRadioButtonColor:
                                      const Color(0x8A000000),
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment: WrapCrossAlignment.start,
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                      cIC.mobile.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter Mobile Number',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                      controller:
                                      cIC.email.value,
                                      keyboardType: TextInputType.emailAddress,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter Email',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                      controller: cIC.pan.value,
                                      obscureText: false,
                                      //maxLength: 10,
                                      decoration: InputDecoration(
                                        labelText: ' Enter PAN Number',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.aadhaar.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Aadhaar Number',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Permanent Address',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
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
                                      controller: cIC
                                          .permanentHouseNo.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter House No.',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller: cIC
                                        .permanentColony.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Street/ Colony',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller: cIC
                                          .permanentLandmark.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter Landmark',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.permanentCity.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter City',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller: cIC
                                          .permanentState.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter State',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.permanentPin.value,
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
                                    //maxLength: 6,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Pin Code',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Present Address',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
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
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                    FlutterFlowTheme
                                        .of(context)
                                        .iconColor,
                                  ),
                                  child: Obx(
                                        () =>
                                        Checkbox(
                                          value: cIC
                                              .presentSameAsPermanent.value,
                                          onChanged: (newValue) async {
                                            cIC
                                                .presentSameAsPermanentAddress(
                                                newValue);
                                          },
                                          activeColor: FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                        ),
                                  ),
                                ),
                                Text(
                                  'Same As Permanent  Address',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
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
                                    child: Obx(() {
                                      return TextFormField(
                                        controller: cIC
                                            .presentHouseNo.value,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: ' Enter House No.',
                                          labelStyle: FlutterFlowTheme
                                              .of(context)
                                              .bodyText1,
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
                                              .fromSTEB(20.0, 0.0, 0.0, 0.0),
                                        ),
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
                                        maxLines: null,
                                      );
                                    }),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller:
                                    cIC.presentColony.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Street/ Colony',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller: cIC
                                          .presentLandmark.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter Landmark',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.presentCity.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter City',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller:
                                      cIC.presentState.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter State',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.presentPin.value,
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
                                    //maxLength: 6,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Pin Code',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Office Address',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(2.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                        FlutterFlowTheme
                                            .of(context)
                                            .iconColor,
                                      ),
                                      child: Obx(() {
                                        return Checkbox(
                                          value: cIC
                                              .officeSameAsPermanent.value,
                                          onChanged: (newValue) async {
                                            cIC
                                                .officeSameAsPermanentAddress(
                                                newValue);
                                          },
                                          activeColor:
                                          FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                        );
                                      }),
                                    ),
                                    Text(
                                      'Same as Permanent  Address',
                                      style:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(2.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                        FlutterFlowTheme
                                            .of(context)
                                            .iconColor,
                                      ),
                                      child: Obx(() {
                                        return Checkbox(
                                          value: cIC
                                              .officeSameAsPresent.value,
                                          onChanged: (newValue) async {
                                            cIC
                                                .officeSameAsPresentAddress(
                                                newValue);
                                          },
                                          activeColor:
                                          FlutterFlowTheme
                                              .of(context)
                                              .borderColor,
                                        );
                                      }),
                                    ),
                                    Text(
                                      'Same as Present  Address',
                                      style:
                                      FlutterFlowTheme
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
                                      controller: cIC
                                          .officeHouseNo.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter House No.',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.officeColony.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Street/ Colony',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller: cIC
                                          .officeLandmark.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter Landmark',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.officeCity.value,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: ' Enter City',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                      controller:
                                      cIC.officeState.value,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: ' Enter State',
                                        labelStyle: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1,
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
                                    controller:
                                    cIC.officePin.value,
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
                                    //maxLength: 6,
                                    decoration: InputDecoration(
                                      labelText: ' Enter Pin Code',
                                      labelStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .bodyText1,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.40,
                                      height:
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .height * 0.04,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .buttonColor,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      margin:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Cancel",
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme
                                              .of(context)
                                              .btnText,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // clientInfoController.tabs.value=false;
                                      // //debugPrint(clientInfoController.tabs.value.toString());
                                      cIC.submit();
                                    },
                                    child: Obx(() {
                                      return Container(
                                        width:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .width * 0.40,
                                        height:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .height * 0.04,
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
                                              cIC.loading.value
                                                  ? const CircularProgressIndicator()
                                                  : Text(
                                                "Update",
                                                style: FlutterFlowTheme
                                                    .of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                  FlutterFlowTheme
                                                      .of(context)
                                                      .btnText,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
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
      ),
    );
  }
}
