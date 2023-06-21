import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_util.dart';
import 'package:client_booking/view_models/controller/booking/booking_form/client_info.dart';
import 'package:client_booking/view_models/controller/booking/booking_form1_controller.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';

class BookingFormView1 extends StatefulWidget {
  const BookingFormView1({Key? key}) : super(key: key);
  @override
  _BookingFormView1State createState() => _BookingFormView1State();
}

class _BookingFormView1State extends State<BookingFormView1> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();
  final bookingForm1 = Get.put(BookingForm1Controller());
  final clintInfo = Get.put(ClientInfoController());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _unFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Stack(
        children: [
          SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unFocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: (){
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
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Booking Form',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'This is your cost for Booking your project',
                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Booking amount is mandatory',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: Stack(
                              children: [

                                PageView(
                                  controller: bookingForm1.pageViewController.value ,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 3.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20.0),
                                          ),
                                          child: Container(
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.6,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(20.0),
                                              border: Border.all(
                                                color: FlutterFlowTheme.of(context)
                                                    .borderColor,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 200.0,
                                                    height: 150.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme.of(
                                                          context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Image.asset(
                                                      'assets/images/Interview_re.png',
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'General Information',
                                                        style: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Plan 1',
                                                        style: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText2,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0, 15.0, 0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .double_arrow_rounded,
                                                          color:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .iconColor,
                                                          size: 15.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              5.0,
                                                              0.0,
                                                              0.0,
                                                              0.0),
                                                          child: Text(
                                                            'Concept Planning for unlimited times',
                                                            style:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20.0, 5.0, 0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .double_arrow_rounded,
                                                          color:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .iconColor,
                                                          size: 15.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              5.0,
                                                              0.0,
                                                              0.0,
                                                              0.0),
                                                          child: Text(
                                                            'Naksha process will start',
                                                            style:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0.0, 15.0, 0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              5.0,
                                                              0.0,
                                                              0.0,
                                                              0.0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  'bookingformsreen2');
                                                            },
                                                            child: Text(
                                                              'Total ₹ 1,00,000',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                fontFamily:
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .borderColor,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0.0, 30.0, 0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {

                                                            clintInfo.bookingAmount.value = "100000";
                                                            bookingForm1.onclick.value = true;
                                                            Get.toNamed(RouteName.bookingForm2);

                                                          },
                                                          child: Container(
                                                            width:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                                0.35,
                                                            height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                                0.04,
                                                            decoration: BoxDecoration(
                                                              color:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .buttonColor,
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  1.0,
                                                                  0.0,
                                                                  1.0,
                                                                  0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                MainAxisSize.max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    'Select Plan',
                                                                    style: FlutterFlowTheme
                                                                        .of(context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 100.0,
                                                                    child:
                                                                    VerticalDivider(
                                                                      thickness: 1.0,
                                                                      indent: 10.0,
                                                                      endIndent: 10.0,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .arrow_forward,
                                                                    color: FlutterFlowTheme
                                                                        .of(context)
                                                                        .alternate,
                                                                    size: 20.0,
                                                                  ),
                                                                ],
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
                                        ),
                                      ],
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 3.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(20.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.75,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.6,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                                border: Border.all(
                                                  color:
                                                  FlutterFlowTheme.of(context)
                                                      .borderColor,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 200.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/Meeting_re.png',
                                                        width: 100.0,
                                                        height: 100.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'General Information',
                                                          style:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyText1,
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Plan 2',
                                                          style:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyText2,
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          20.0, 15.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .double_arrow_rounded,
                                                            color:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .iconColor,
                                                            size: 15.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Concept Planning for unlimited times',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          20.0, 5.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .double_arrow_rounded,
                                                            color:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .iconColor,
                                                            size: 15.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Naksha process will start',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          20.0, 5.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .double_arrow_rounded,
                                                            color:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .iconColor,
                                                            size: 15.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Front elevation',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB( 20.0, 5.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .double_arrow_rounded,
                                                            color:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .iconColor,
                                                            size: 15.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Side Elevation',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          20.0, 5.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .double_arrow_rounded,
                                                            color:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .iconColor,
                                                            size: 15.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Back Elevation',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                5.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              'Total ₹ ${bookingForm1.amount33p.value}',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                fontFamily:
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .borderColor,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              clintInfo.bookingAmount.value = bookingForm1.amount33p.value;
                                                              Get.toNamed(RouteName.bookingForm2);
                                                            },
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .width *
                                                                  0.35,
                                                              height: MediaQuery.of(
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
                                                                    1.0,
                                                                    0.0,
                                                                    1.0,
                                                                    0.0),
                                                                child:  Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                                  children: [
                                                                    Text(
                                                                      'Select Plan',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(
                                                                            context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 100.0,
                                                                      child:
                                                                      VerticalDivider(
                                                                        thickness:
                                                                        1.0,
                                                                        indent: 10.0,
                                                                        endIndent:
                                                                        10.0,
                                                                        color: FlutterFlowTheme.of(
                                                                            context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_forward,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .alternate,
                                                                      size: 20.0,
                                                                    ),
                                                                  ],
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SingleChildScrollView(
                                    //   child: Column(
                                    //     mainAxisSize: MainAxisSize.max,
                                    //     mainAxisAlignment: MainAxisAlignment.end,
                                    //     children: [
                                    //       Material(
                                    //         color: Colors.transparent,
                                    //         elevation: 3.0,
                                    //         shape: RoundedRectangleBorder(
                                    //           borderRadius:
                                    //           BorderRadius.circular(20.0),
                                    //         ),
                                    //         child: Container(
                                    //           width: MediaQuery.of(context)
                                    //               .size
                                    //               .width *
                                    //               0.75,
                                    //           height: MediaQuery.of(context)
                                    //               .size
                                    //               .height *
                                    //               0.6,
                                    //           decoration: BoxDecoration(
                                    //             color: FlutterFlowTheme.of(context)
                                    //                 .secondaryBackground,
                                    //             borderRadius:
                                    //             BorderRadius.circular(20.0),
                                    //             border: Border.all(
                                    //               color:
                                    //               FlutterFlowTheme.of(context)
                                    //                   .borderColor,
                                    //             ),
                                    //           ),
                                    //           child: Padding(
                                    //             padding:
                                    //             const EdgeInsetsDirectional.fromSTEB(
                                    //                 0.0, 30.0, 0.0, 0.0),
                                    //             child: Column(
                                    //               mainAxisSize: MainAxisSize.max,
                                    //               children: [
                                    //                 Container(
                                    //                   width: 200.0,
                                    //                   height: 150.0,
                                    //                   decoration: BoxDecoration(
                                    //                     color: FlutterFlowTheme.of(
                                    //                         context)
                                    //                         .secondaryBackground,
                                    //                   ),
                                    //                   child: Image.asset(
                                    //                     'assets/images/Business_chat.png',
                                    //                     width: 100.0,
                                    //                     height: 100.0,
                                    //                     fit: BoxFit.cover,
                                    //                   ),
                                    //                 ),
                                    //                 Row(
                                    //                   mainAxisSize:
                                    //                   MainAxisSize.max,
                                    //                   mainAxisAlignment:
                                    //                   MainAxisAlignment.center,
                                    //                   children: [
                                    //                     Text(
                                    //                       'General Information',
                                    //                       style:
                                    //                       FlutterFlowTheme.of(
                                    //                           context)
                                    //                           .bodyText1,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   mainAxisSize:
                                    //                   MainAxisSize.max,
                                    //                   mainAxisAlignment:
                                    //                   MainAxisAlignment.center,
                                    //                   children: [
                                    //                     Text(
                                    //                       'Plan 3',
                                    //                       style:
                                    //                       FlutterFlowTheme.of(
                                    //                           context)
                                    //                           .bodyText2,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 15.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Concept Planning for unlimited times',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 5.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Naksha process will start',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 5.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Front elevation',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 5.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Side Elevation',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 5.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Back Elevation',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 5.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Structure Design',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       20.0, 5.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment.start,
                                    //                     children: [
                                    //                       Icon(
                                    //                         Icons
                                    //                             .double_arrow_rounded,
                                    //                         color:
                                    //                         FlutterFlowTheme.of(
                                    //                             context)
                                    //                             .iconColor,
                                    //                         size: 15.0,
                                    //                       ),
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Virtual Reality',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .bodyText1,
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       0.0, 15.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment
                                    //                         .center,
                                    //                     children: [
                                    //                       Padding(
                                    //                         padding:
                                    //                         const EdgeInsetsDirectional
                                    //                             .fromSTEB(
                                    //                             5.0,
                                    //                             0.0,
                                    //                             0.0,
                                    //                             0.0),
                                    //                         child: Text(
                                    //                           'Total ₹ 3,00,000',
                                    //                           style: FlutterFlowTheme
                                    //                               .of(context)
                                    //                               .subtitle1
                                    //                               .override(
                                    //                             fontFamily:
                                    //                             'Poppins',
                                    //                             color: FlutterFlowTheme.of(
                                    //                                 context)
                                    //                                 .borderColor,
                                    //                           ),
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsetsDirectional
                                    //                       .fromSTEB(
                                    //                       0.0, 15.0, 0.0, 0.0),
                                    //                   child: Row(
                                    //                     mainAxisSize:
                                    //                     MainAxisSize.max,
                                    //                     mainAxisAlignment:
                                    //                     MainAxisAlignment
                                    //                         .center,
                                    //                     children: [
                                    //                       InkWell(
                                    //                         onTap: () {
                                    //                           clintInfo.bookingAmount.value = "300000";
                                    //                           Get.toNamed(RouteName.bookingForm2);
                                    //                         },
                                    //                         child: Container(
                                    //                           width: MediaQuery.of(
                                    //                               context)
                                    //                               .size
                                    //                               .width *
                                    //                               0.35,
                                    //                           height: MediaQuery.of(
                                    //                               context)
                                    //                               .size
                                    //                               .height *
                                    //                               0.04,
                                    //                           decoration:
                                    //                           BoxDecoration(
                                    //                             color: FlutterFlowTheme
                                    //                                 .of(context)
                                    //                                 .buttonColor,
                                    //                             borderRadius:
                                    //                             BorderRadius
                                    //                                 .circular(
                                    //                                 10.0),
                                    //                           ),
                                    //                           child: Padding(
                                    //                             padding:
                                    //                             const EdgeInsetsDirectional
                                    //                                 .fromSTEB(
                                    //                                 1.0,
                                    //                                 0.0,
                                    //                                 1.0,
                                    //                                 0.0),
                                    //                             child: Row(
                                    //                               mainAxisSize:
                                    //                               MainAxisSize
                                    //                                   .max,
                                    //                               mainAxisAlignment:
                                    //                               MainAxisAlignment
                                    //                                   .spaceEvenly,
                                    //                               children: [
                                    //                                 Text(
                                    //                                   'Select Plan',
                                    //                                   style: FlutterFlowTheme.of(
                                    //                                       context)
                                    //                                       .bodyText1
                                    //                                       .override(
                                    //                                     fontFamily:
                                    //                                     'Poppins',
                                    //                                     color: FlutterFlowTheme.of(
                                    //                                         context)
                                    //                                         .alternate,
                                    //                                   ),
                                    //                                 ),
                                    //                                 SizedBox(
                                    //                                   height: 100.0,
                                    //                                   child:
                                    //                                   VerticalDivider(
                                    //                                     thickness:
                                    //                                     1.0,
                                    //                                     indent: 10.0,
                                    //                                     endIndent:
                                    //                                     10.0,
                                    //                                     color: FlutterFlowTheme.of(
                                    //                                         context)
                                    //                                         .alternate,
                                    //                                   ),
                                    //                                 ),
                                    //                                 Icon(
                                    //                                   Icons
                                    //                                       .arrow_forward,
                                    //                                   color: FlutterFlowTheme.of(
                                    //                                       context)
                                    //                                       .alternate,
                                    //                                   size: 20.0,
                                    //                                 ),
                                    //                               ],
                                    //                             ),
                                    //                           ),
                                    //                         ),
                                    //                       ),
                                    //                     ],
                                    //                   ),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                    child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                      controller:bookingForm1.pageViewController.value,
                                      count: 2,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        bookingForm1.pageViewController.value.animateToPage(
                                          i,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                        expansionFactor: 2,
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 16,
                                        dotHeight: 16,
                                        dotColor: const Color(0xFF9E9E9E),
                                        activeDotColor: FlutterFlowTheme.of(context)
                                            .borderColor,
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                )
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
          ),
          const Visibility(
            visible: false,//bookingForm1.onclick.value,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
