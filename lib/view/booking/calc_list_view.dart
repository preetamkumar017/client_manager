import 'package:client_booking/models/booking_model/client_data_calc_model.dart';
import 'package:client_booking/res/components/general_exception.dart';
import 'package:client_booking/res/components/internet_exceptions_widget.dart';
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/import_controller.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/quick_booking_controller.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import '../../data/response/status.dart';


class CostListView extends StatefulWidget {
  const CostListView({Key? key}) : super(key: key);

  @override
  _CostListViewState createState() => _CostListViewState();
}

class _CostListViewState extends State<CostListView> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final blc = Get.put(ImportController());

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
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme
            .of(context)
            .primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Text(
                    'Cost Calculator List',
                    style: FlutterFlowTheme
                        .of(context)
                        .headlineSmall,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 7, 10, 0),
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
                            color:
                            FlutterFlowTheme
                                .of(context)
                                .iconblueContainer,
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.person,
                            color: FlutterFlowTheme
                                .of(context)
                                .iconbluecolour,
                            size: 10,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5, 0, 0, 0),
                          child: Obx(() {
                            return Text(
                              blc.name.value ?? "",
                              style: FlutterFlowTheme
                                  .of(context)
                                  .titleSmall,
                            );
                          }),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 0, 0, 0),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme
                                  .of(context)
                                  .iconblueContainer,
                              borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                            ),
                            child: Icon(
                              Icons.call,
                              color:
                              FlutterFlowTheme
                                  .of(context)
                                  .iconbluecolour,
                              size: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 0, 0, 0),
                          child: Obx(() {
                            return Text(
                              blc.mobile.value,
                              style: FlutterFlowTheme
                                  .of(context)
                                  .titleSmall,
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme
                              .of(context)
                              .iconblueContainer,
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                        ),
                        child: Icon(
                          Icons.location_pin,
                          color: FlutterFlowTheme
                              .of(context)
                              .iconbluecolour,
                          size: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            5, 0, 0, 0),
                        child: Obx(() {
                          return Text(
                            blc.address.value,
                            style: FlutterFlowTheme
                                .of(context)
                                .titleSmall,
                          );
                        }),
                      ),
                    ],
                  ),
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
                            // homeController.refreshApi();
                          },
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {
                          // homeController.refreshApi();
                        });
                      }

                    case Status.COMPLETED:
                      return RefreshIndicator(
                        onRefresh: () =>
                            blc.getDataFromCalc(blc.mobile.value, context),
                        child: ListView.builder(
                          itemCount: blc.getCalcData.value.result!.length,
                          itemBuilder: (context, index) {
                            Result calcData = blc.getCalcData.value.result[index];
                            debugPrint(calcData.createDate.toString());
                            return
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                          Icons.date_range_outlined,
                                                          color: FlutterFlowTheme.of(context)
                                                              .iconbluecolour,
                                                          size: 10,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          calcData.createDate ?? "",
                                                          style:
                                                          FlutterFlowTheme.of(context).titleSmall,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.spaceEvenly,
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
                                                            Icons.date_range_outlined,
                                                            color: FlutterFlowTheme.of(context)
                                                                .iconbluecolour,
                                                            size: 10,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                              5, 0, 0, 0),
                                                          child: RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Total Cost:',
                                                                  style: FlutterFlowTheme.of(context)
                                                                      .labelSmall,
                                                                ),
                                                                TextSpan(
                                                                  text: ' \u{20B9}${calcData.totalCost}',
                                                                  style: FlutterFlowTheme.of(context)
                                                                      .titleSmall,
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme.of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                          Icons.done_outlined,
                                                          color: FlutterFlowTheme.of(context)
                                                              .iconbluecolour,
                                                          size: 20,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: 'Total Floor: ',
                                                                style: FlutterFlowTheme.of(context)
                                                                    .labelSmall,
                                                              ),
                                                              TextSpan(
                                                                text: calcData.floorNum ?? "",
                                                                style: FlutterFlowTheme.of(context)
                                                                    .titleSmall,
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme.of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.start,
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
                                                            color: FlutterFlowTheme.of(context)
                                                                .iconbluecolour,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                              5, 0, 0, 0),
                                                          child: RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Area:',
                                                                  style: FlutterFlowTheme.of(context)
                                                                      .labelSmall,
                                                                ),
                                                                TextSpan(
                                                                  text: '${calcData.totalArea} Sqft',
                                                                  style: FlutterFlowTheme.of(context)
                                                                      .titleSmall,
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme.of(context)
                                                                  .bodyMedium,
                                                            ),
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
                                        StyledDivider(
                                          thickness: 1,
                                          indent: 10,
                                          endIndent: 10,
                                          color: FlutterFlowTheme.of(context).divider,
                                          lineStyle: DividerLineStyle.dashed,
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              calcData.bookingId != null ?
                                              Align(
                                                alignment: const AlignmentDirectional(-1, 0),
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
                                                        Icons.date_range,
                                                        color: FlutterFlowTheme.of(context)
                                                            .iconbluecolour,
                                                        size: 10,
                                                      ),
                                                    ),
                                                  Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Booking Date: ',
                                                              style: FlutterFlowTheme.of(context)
                                                                  .labelSmall,
                                                            ),
                                                            TextSpan(
                                                              text: calcData.bookingDate,
                                                              style: FlutterFlowTheme.of(context)
                                                                  .titleSmall,
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme.of(context).bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ) :
                                              const SizedBox(),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                  Map<String,String> screenData = {
                                                    "id":calcData.id ?? "",
                                                    "booking_id":calcData.bookingId ?? "",
                                                    "name":calcData.clientName ?? "",
                                                    "mobile":calcData.clientMob ?? "",
                                                    "totalAmount":calcData.totalCost ?? "",
                                                  };
                                                   Get.toNamed(RouteName.quickBookingView,arguments: calcData);
                                                },
                                                text: 'Book Now',
                                                options: FFButtonOptions(
                                                  width: 80,
                                                  height: 25,
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                  iconPadding:
                                                  const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                  color:
                                                  FlutterFlowTheme.of(context).iconeditcontainer,
                                                  textStyle:
                                                  FlutterFlowTheme.of(context).displayLarge,
                                                  elevation: 1,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(-1, 0),
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
                                                        color: FlutterFlowTheme.of(context)
                                                            .iconbluecolour,
                                                        size: 10,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Created by: ',
                                                              style: FlutterFlowTheme.of(context).labelSmall,
                                                            ),
                                                            TextSpan(
                                                              text: calcData.createBy ?? "",
                                                              style: FlutterFlowTheme.of(context).titleSmall,
                                                            )
                                                          ],
                                                          style:
                                                          FlutterFlowTheme.of(context).bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 1,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    child: Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme.of(context)
                                                            .secondaryBackground,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Icon(
                                                        Icons.download_rounded,
                                                        color: FlutterFlowTheme.of(context).success,
                                                        size: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme.of(context)
                                                              .secondaryBackground,
                                                          borderRadius: BorderRadius.circular(5),
                                                        ),
                                                        child: Icon(
                                                          Icons.edit_rounded,
                                                          color: FlutterFlowTheme.of(context).info,
                                                          size: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme.of(context)
                                                              .secondaryBackground,
                                                          borderRadius: BorderRadius.circular(5),
                                                        ),
                                                        child: Icon(
                                                          Icons.delete,
                                                          color: FlutterFlowTheme.of(context).error,
                                                          size: 12,
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
                              );
                          },
                          // padding: EdgeInsets.zero,
                          shrinkWrap: false,
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),

                        ),
                      );
                  }
                }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
