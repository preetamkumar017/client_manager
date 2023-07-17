import 'dart:developer';

import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view_models/controller/booking/booking_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';

class AttachDocumentsDetails extends StatefulWidget {
  AttachDocumentsDetails({super.key});

  @override
  State<AttachDocumentsDetails> createState() => _AttachDocumentsDetailsState();
}

class _AttachDocumentsDetailsState extends State<AttachDocumentsDetails> {
  final bkc = Get.put(BookingDetailsController());
  bool aadhaar = false;
  bool pan = false;
  bool bill = false;
  bool reg = false;
  bool b1 = false;
  bool khasra = false;
  bool tncp = false;
  bool tax = false;
  bool other = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  assign();
  }

  assign()
  {
    var data = bkc.bookingDetails.value.result!.attachDoc;
    debugPrint("assign");
    if(data!=null) {
      aadhaar = data.chkAdharCopy == "yes";
      pan = data.chkPancardCopy == "yes";
      bill = data.chkElectricBill == "yes";
      reg = data.chkRegistryCopy == "yes";
      b1 = data.chkBOneCopy == "yes";
      khasra = data.chkKhasraMap == "yes";
      tncp = data.chkApprovedTncp == "yes";
      tax = data.chkTaxReceipt == "yes";
      other = data.chkAnyOther == "yes";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 1.0,
          // height: MediaQuery.of(context).size.height * 0.9,
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
          child : Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 20.0, 10.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Attached Document',
                                        style: FlutterFlowTheme
                                            .of(context)
                                            .title3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                log("before attach document");
                                bool result =   await  Get.toNamed(RouteName.attachDocuments);
                                log("after back attach document");

                                if(result)
                                {
                                  log("before bookingDetailsApi call");
                                 await bkc.bookingDetailsApi(bkc.bookingDetails.value.result!.clientInfo!.id!);
                                  log("after back bookingDetailsApi call");
                                }
                                await Future.delayed(const Duration(seconds: 2));
                                log(result.toString());
                                assign();
                                log("after assign");
                                setState(() {

                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.15,
                                height:
                                MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .iconeditcontainer,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: FlutterFlowTheme.of(context)
                                          .iconeditcolour,
                                      size: 12.0,
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Edit',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
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
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        30.0, 10.0, 30.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Recently Upload',
                          style: FlutterFlowTheme
                              .of(context)
                              .bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    // spacing: 20.0,
                    // alignment: WrapAlignment.start,
                    children: [
                      aadhaar ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Aadhaar"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      pan ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Pan"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      bill ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Latest Electricity bill "),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      reg ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Registry copy"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      b1 ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Latest B1"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      khasra ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Khasra Map"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      tncp ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Approved Map TNCP/ Municipal Corporation"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      tax ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Property Tax Receipt"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                      other ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ChoiceChip(
                          label: const Text("Any Other"),
                          selected: true,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconTheme: const IconThemeData(
                            color: Colors.white,
                            size: 18.0,
                          ),
                        ),
                      ):const SizedBox(),
                    ],
                  ),
                  StyledDivider(
                    thickness: 1.0,
                    indent: 50.0,
                    endIndent: 50.0,
                    color: FlutterFlowTheme
                        .of(context)
                        .divider,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        30.0, 20.0, 30.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Pending Documents ',
                          style: FlutterFlowTheme
                              .of(context)
                              .bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    // spacing: 20.0,
                    // alignment: WrapAlignment.start,
                    children: [
                    !aadhaar ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                          label: const Text("Aadhaar"),
                          selected: false,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme
                                .of(context)
                                .secondaryText,
                          ),
                          iconTheme: IconThemeData(
                            color: FlutterFlowTheme
                                .of(context)
                                .iconColor,
                            size: 18.0,
                          ),
                        ),
                    ):const SizedBox(),
                    !pan ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Pan"),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !bill ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Latest Electricity bill "),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !reg ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Registry copy"),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !b1 ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Latest B1"),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !khasra ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Khasra Map"),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !tncp ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Approved Map TNCP/ Municipal Corporation"),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !tax ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                        label: const Text("Property Tax Receipt"),
                        selected: false,
                        selectedColor: FlutterFlowTheme
                            .of(context)
                            .borderColor,
                        avatar: const Icon(Icons.attach_file_sharp),
                        onSelected: (value) {},
                        elevation: 1.0,
                        backgroundColor: Colors.white,
                        labelStyle: FlutterFlowTheme
                            .of(context)
                            .bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme
                              .of(context)
                              .secondaryText,
                        ),
                        iconTheme: IconThemeData(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconColor,
                          size: 18.0,
                        ),
                      ),
                    ):const SizedBox(),
                    !other ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ChoiceChip(
                          label: const Text("Any Other"),
                          selected: false,
                          selectedColor: FlutterFlowTheme
                              .of(context)
                              .borderColor,
                          avatar: const Icon(Icons.attach_file_sharp),
                          onSelected: (value) {},
                          elevation: 1.0,
                          backgroundColor: Colors.white,
                          labelStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme
                                .of(context)
                                .secondaryText,
                          ),
                          iconTheme: IconThemeData(
                            color: FlutterFlowTheme
                                .of(context)
                                .iconColor,
                            size: 18.0,
                          ),
                        ),
                    ):const SizedBox(),
                    ],
                  ),
                  Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 340.0,
                          height: 240.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme
                                .of(context)
                                .secondaryBackground,
                          ),
                          child: Image.asset(
                            'assets/images/folder.png',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

        ),
      ],
    );
  }
}
