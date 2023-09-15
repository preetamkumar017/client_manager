
// ignore_for_file: deprecated_member_use_from_same_package, sort_child_properties_last

import 'dart:developer';

import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/res/app_url/app_url.dart';
import 'package:client_manager/res/components/general_exception.dart';
import 'package:client_manager/res/components/internet_exceptions_widget.dart';
import 'package:client_manager/res/components/pdf_viewer.dart';
import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_util.dart';
import 'package:client_manager/view_models/controller/agreement/agreement_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/commitment.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/import_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_list_controller.dart';
import 'package:client_manager/view_models/controller/booking/download.dart';
import 'package:client_manager/view_models/services/common_methods.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';

import '../../models/booking_model/AgreementListModel.dart';

class AgreementListView extends StatefulWidget {
  const AgreementListView({Key? key}) : super(key: key);

  @override
  _AgreementListViewState createState() => _AgreementListViewState();
}

class _AgreementListViewState extends State<AgreementListView> {
  final blc = Get.put(AgreementController());

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    blc.agreementListApi();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
              child: Stack(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        color: FlutterFlowTheme.of(context).iconColor,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Agreement List',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'List of Agreement',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                switch (blc.rxRequestStatus.value) {
                  case Status.LOADING:
                    return const Center(child: CircularProgressIndicator());
                  case Status.ERROR:
                    if (blc.error.value == 'No internet') {
                      return InterNetExceptionWidget(
                        onPress: () {
                          blc.agreementListApi();
                        },
                      );
                    } else {
                      return GeneralExceptionWidget(
                          onPress: () {
                        blc.agreementListApi();
                      });
                    }

                  case Status.COMPLETED:
                    return RefreshIndicator(
                      onRefresh: () => blc.agreementListApi(),
                      child: ListView.builder(
                        itemCount: blc.agreementList.value.result!.length,
                        itemBuilder: (context, index) {
                          Result data = blc.agreementList.value.result![index];
                          // //debugPrint(booking.createDate.toString());
                          return ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width * 0.9,
                                      height: 145,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(10, 7, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme.of(context)
                                                            .iconblueContainer,
                                                        borderRadius: BorderRadius.circular(5),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child: Icon(
                                                        Icons.person,
                                                        color:
                                                        FlutterFlowTheme.of(context).iconbluecolour,
                                                        size: 10,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                      child: Text(
                                                        data.clientName ?? "",
                                                        style: FlutterFlowTheme.of(context).bodySmall,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme.of(context)
                                                            .iconblueContainer,
                                                        borderRadius: BorderRadius.circular(5),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child: Icon(
                                                        Icons.call,
                                                        color:
                                                        FlutterFlowTheme.of(context).iconbluecolour,
                                                        size: 10,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                      child: Text(
                                                        data.mobileNo ?? "",
                                                        style: FlutterFlowTheme.of(context).bodySmall,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(-1.00, 0.00),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(10, 2, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color:
                                                      FlutterFlowTheme.of(context).iconblueContainer,
                                                      borderRadius: BorderRadius.circular(5),
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                    child: Icon(
                                                      Icons.date_range_outlined,
                                                      color: FlutterFlowTheme.of(context).iconbluecolour,
                                                      size: 10,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                    child: Text(
                                                      'Agreement Date: ${data.aggrementDate!=null?DateFormat("dd-MMM-yyyy").format(DateTime.parse(data.aggrementDate ?? "")):""}',
                                                      style: FlutterFlowTheme.of(context).bodySmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          StyledDivider(
                                            thickness: 1,
                                            indent: 10,
                                            endIndent: 10,
                                            color: FlutterFlowTheme.of(context).divider,
                                            lineStyle: DividerLineStyle.dashed,
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(-1.00, 0.00),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(10, 2, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color:
                                                      FlutterFlowTheme.of(context).iconblueContainer,
                                                      borderRadius: BorderRadius.circular(5),
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                    child: Icon(
                                                      Icons.done_outlined,
                                                      color: FlutterFlowTheme.of(context).iconbluecolour,
                                                      size: 10,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                    child: Text(
                                                      'Agreement Amount: Rs. ${data.aggrementAmt}',
                                                      style: FlutterFlowTheme.of(context).bodySmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(10, 2, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Align(
                                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme.of(context)
                                                              .iconblueContainer,
                                                          borderRadius: BorderRadius.circular(5),
                                                          shape: BoxShape.rectangle,
                                                        ),
                                                        child: Icon(
                                                          Icons.done_outlined,
                                                          color:
                                                          FlutterFlowTheme.of(context).iconbluecolour,
                                                          size: 10,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                        child: Text(
                                                          'Final Amount: 250000',
                                                          style:
                                                          FlutterFlowTheme.of(context).displayLarge,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme.of(context).greencontainer,
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    alignment: const AlignmentDirectional(-0.05, 0.00),
                                                    child: Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(7, 3, 7, 3),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Get.to(PDFScreen(path: AppUrl.anubandhPdf+"/${data.bookingId}",));
                                                        },
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Icon(
                                                              Icons.remove_red_eye,
                                                              color: FlutterFlowTheme.of(context)
                                                                  .iconeditcolour,
                                                              size: 12,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                                  5, 0, 0, 0),
                                                              child: Text(
                                                                'View',
                                                                style: FlutterFlowTheme.of(context)
                                                                    .displayLarge,
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
                                            padding: const EdgeInsetsDirectional.fromSTEB(10, 2, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme.of(context)
                                                            .iconblueContainer,
                                                        borderRadius: BorderRadius.circular(5),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child: Icon(
                                                        Icons.date_range,
                                                        color:
                                                        FlutterFlowTheme.of(context).iconbluecolour,
                                                        size: 10,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                      child: Text(
                          'Work Start: ${data.workStartOn!=null?DateFormat("dd-MMM-yyyy").format(DateTime.parse(data.workStartOn ?? "")):""}',
                                                        style: FlutterFlowTheme.of(context).bodySmall,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme.of(context)
                                                            .iconblueContainer,
                                                        borderRadius: BorderRadius.circular(5),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child: Icon(
                                                        Icons.update,
                                                        color:
                                                        FlutterFlowTheme.of(context).iconbluecolour,
                                                        size: 10,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                      child: Text(
                                                        'Work End: ${data.compPeriod!=null?DateFormat("dd-MMM-yyyy").format(DateTime.parse(data.compPeriod ?? "")):""}',
                                                        style: FlutterFlowTheme.of(context).bodySmall,
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
                              ],
                            )
                          ;
                        },
                        // padding: EdgeInsets.zero,
                        shrinkWrap: false,
                        scrollDirection: Axis.vertical,
                        physics:  const BouncingScrollPhysics(),

                      ),
                    );
                }
              }
              ),
            ),
          ],
        ),
      ),
    );
  }


}
