
import 'package:client_booking/data/response/status.dart';
import 'package:client_booking/res/app_url/app_url.dart';
import 'package:client_booking/res/components/general_exception.dart';
import 'package:client_booking/res/components/internet_exceptions_widget.dart';
import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/commitment.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/import_controller.dart';
import 'package:client_booking/view_models/controller/booking/booking_list_controller.dart';
import 'package:client_booking/view_models/controller/booking/download.dart';
import 'package:client_booking/view_models/services/common_methods.dart';
import 'package:get/get.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';

class BookingListView extends StatefulWidget {
  const BookingListView({Key? key}) : super(key: key);

  @override
  _BookingListViewState createState() => _BookingListViewState();
}

class _BookingListViewState extends State<BookingListView> {
  final blc = Get.put(BookingListController());
  final bkc = Get.put(BookingDetailsController());
  final commitController = Get.put(CommitmentController());
  final importController = Get.put(ImportController());

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    blc.bookingListApi();
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
        child: Stack(
          children: [
            Column(
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
                          'Booking List',
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
                        'List of Booked Persons',
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
                          onRefresh: () => blc.bookingListApi(),
                          child: ListView.builder(
                            itemCount: blc.bookingList.value.result!.length,
                            itemBuilder: (context, index) {
                              var booking = blc.bookingList.value.result![index];
                              // //debugPrint(booking.createDate.toString());
                              return Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        //debugPrint("message");
                                        try{
                                          bkc.bookingDetailsApi(booking.id ?? "");
                                          Get.toNamed(RouteName.bookingDetails);
                                        }catch(e){
                                          //debugPrint(e.toString());
                                        }
                                        //debugPrint("uguohgoih");
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width * 0.9,
                                          // height: 125,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(10, 7, 10, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          width: 20,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xFFEBF7FD),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    5),
                                                            shape: BoxShape.rectangle,
                                                          ),
                                                          child: const Icon(
                                                            Icons.person,
                                                            color: Color(0xFF32A7E2),
                                                            size: 10,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: Get.width * 0.45,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    5, 0, 0, 0),
                                                            child: Text(
                                                              booking.clientName ??
                                                                  "",
                                                              style:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          width: 20,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xFFEBF7FD),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    5),
                                                            shape: BoxShape.rectangle,
                                                          ),
                                                          child: const Icon(
                                                            Icons.calendar_today,
                                                            color: Color(0xFF32A7E2),
                                                            size: 10,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  5, 0, 0, 0),
                                                          child: Text(
                                                              booking.createDate!=null?'  ${myDateFormat(booking.createDate ?? "")}': "",
                                                            style:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 10, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          width: 20,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xFFEBF7FD),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    5),
                                                            shape: BoxShape.rectangle,
                                                          ),
                                                          child: const Icon(
                                                            Icons.mail,
                                                            color: Color(0xFF32A7E2),
                                                            size: 10,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: Get.width * 0.45,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                    5, 0, 0, 0),
                                                            child: Text(
                                                              booking.emailId ?? "",
                                                              style:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      0, 0, 15, 0),
                                                              child: Container(
                                                                width: 20,
                                                                height: 20,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFFEBF7FD),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                                child: const Icon(
                                                                  Icons.call,
                                                                  color: Color(
                                                                      0xFF32A7E2),
                                                                  size: 10,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                      5, 0, 0, 0),
                                                              child: Text(
                                                                booking.mobileNo ??
                                                                    "",
                                                                style: FlutterFlowTheme
                                                                        .of(context)
                                                                    .subtitle2,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const StyledDivider(
                                                thickness: 1,
                                                indent: 10,
                                                endIndent: 10,
                                                lineStyle: DividerLineStyle.dashed,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 10, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: 'Booking Amt: \u{20B9}',
                                                                style: TextStyle(
                                                                  color: FlutterFlowTheme
                                                                          .of(context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    ' ${booking.bookingAmt}.00',
                                                                style: TextStyle(
                                                                  color: FlutterFlowTheme
                                                                          .of(context)
                                                                      .secondaryText,
                                                                ),
                                                              )
                                                            ],
                                                            style:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: 'Est. Amt: \u{20B9}',
                                                                style: TextStyle(
                                                                  color: FlutterFlowTheme
                                                                          .of(context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: ' ${booking.finalAmt}.00',
                                                                style: TextStyle(
                                                                  color: FlutterFlowTheme
                                                                          .of(context)
                                                                      .secondaryText,
                                                                ),
                                                              )
                                                            ],
                                                            style:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    TextButton(
                                                      onPressed: (){
                                                         commitController.bookingId.value = booking.id.toString();
                                                         commitController.check();
                                                      },
                                                      child: const Text("Commitments"),
                                                    ),
                                                    Row(
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            DownloadFile().openFile(AppUrl.bookingFormUrlForDownload+booking.id!,"${booking.clientName!}.pdf");
                                                          },
                                                          child: Material(
                                                            color: Colors.transparent,
                                                            elevation: 1,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      5),
                                                            ),
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              decoration: BoxDecoration(
                                                                color: FlutterFlowTheme
                                                                        .of(context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        5),
                                                              ),
                                                              child: Icon(
                                                                Icons.download,
                                                                color:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .iconColor,
                                                                size: 12,
                                                              ),
                                                            ),
                                                          ),
                                                        ),

                                                        const SizedBox(width: 20.0,),
                                                        InkWell(
                                                          onTap: () async {
                                                            bool v = await showConfermationPopup();
                                                            if(v){
                                                              blc.bookingDeleteApi(
                                                                  booking.id ??
                                                                      "");
                                                              blc.bookingListApi();
                                                            }
                                                          },
                                                          child: Material(
                                                            color: Colors.transparent,
                                                            elevation: 1,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      5),
                                                            ),
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              decoration: BoxDecoration(
                                                                color: FlutterFlowTheme
                                                                        .of(context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        5),
                                                              ),
                                                              child: Icon(
                                                                Icons.delete,
                                                                color:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .iconColor,
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
                                    ),
                                  ],
                                ),
                              );
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
            Visibility(
              visible: commitController.loading.value,
              child: Container(
                height: Get.height,
                width: Get.width,
                color: Colors.white24,
                child: const Center(child: CircularProgressIndicator()),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.toNamed(RouteName.bookingForm1);
          showPopup();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<bool> showConfermationPopup() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Please Confirm'),
        content: const Text('Do you want Delete?'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(false),
            //return false when click on "NO"
            child: const Text('No'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            //return true when click on "Yes"
            child: const Text('Yes'),
          ),
        ],
      ),
    ) ??
        false; //if show Dialogue had returned null, then return false
  }

  void showPopup()
  {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Stack(
              clipBehavior: Clip.none, children: <Widget>[
              Positioned(
                right: -40.0,
                top: -40.0,
                child: InkResponse(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleAvatar(
                    child: Icon(Icons.close),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Form(
                // key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("Enter Mobile Number to Import Data")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: importController.importText,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: const Text("Submit"),
                        onPressed: () {
                          if(importController.importText.text=="")
                            {
                              Utils.toastMessage("Please enter Mobile Number");
                            }else
                              {
                                importController.getData(importController.importText.text, context);
                              }

                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
            ),
          );
        });
  }

}
