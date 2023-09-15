import 'dart:developer';
import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/res/components/general_exception.dart';
import 'package:client_manager/res/components/internet_exceptions_widget.dart';
import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/import_controller.dart';
import 'package:client_manager/view_models/controller/home/dashboard_controller.dart';
import 'package:client_manager/models/home/dashboard_model.dart';
import 'package:client_manager/view_models/services/box_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final dash = Get.put(DashboardController());
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  bool tour = true;


  late TutorialCoachMark tutorialCoachMark;


  var profile = GlobalKey();
  var totalBooking = GlobalKey();
  var totalAgreement = GlobalKey();
  var bookingAmount = GlobalKey();
  var agreementAmount = GlobalKey();
  var newBooking = GlobalKey();
  var newAgreement = GlobalKey();


  final importController = Get.put(ImportController());


  @override
  void initState() {
    super.initState();
    dash.getData();

  }

  void showTutorial() {
    tutorialCoachMark.show(context: context);
  }


  void createTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(),
      colorShadow: Colors.black45,
      textSkip: "SKIP",
      paddingFocus: 10,
      opacityShadow: 0.8,
      onFinish: () {
        print("finish");
      },
      onClickTarget: (target) {
        print('onClickTarget: $target');
      },
      onClickTargetWithTapPosition: (target, tapDetails) {
        print("target: $target");
        print("clicked at position local: ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
      },
      onClickOverlay: (target) {
        print('onClickOverlay: $target');
      },
      onSkip: () {
        print("skip");
      },

    );
  }


  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];
    targets.add(
      TargetFocus(
        identify: "Profile",
        keyTarget: profile,
        alignSkip: Alignment.bottomRight,
        contents: [
          TargetContent(
            align: ContentAlign.custom,
            customPosition: CustomTargetContentPosition(
              top: Get.height*0.30,
            ),
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    "This section  provide information about yourself And you can get version information of this application",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    targets.add(
      TargetFocus(
        identify: "Total Booking",
        keyTarget: totalBooking,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    "Titulo lorem ipsum",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    targets.add(
      TargetFocus(
        identify: "Total Agreement",
        keyTarget: totalAgreement,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    "Titulo lorem ipsum",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    targets.add(
      TargetFocus(
        identify: "Booking Amount",
        keyTarget: bookingAmount,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.custom,
            customPosition: CustomTargetContentPosition(
              top: Get.height*0.30
            ),
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    "Titulo lorem ipsum",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    targets.add(
      TargetFocus(
        identify: "Agreement Amount",
        keyTarget: agreementAmount,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.custom,
            customPosition: CustomTargetContentPosition(
                top: Get.height*0.30
            ),
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    "Titulo lorem ipsum",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    targets.add(
      TargetFocus(
        identify: "New Booking",
        keyTarget: newBooking,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Titulo lorem ipsum",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    targets.add(
      TargetFocus(
        identify: "New Agreement",
        keyTarget: newAgreement,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Text(
                    "Titulo lorem ipsum",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
    return targets;
  }


  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
      //show confirm dialogue
      //the return value will be from "Yes" or "No" options
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App'),
        content: const Text('Do you want to exit an App?'),
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: WillPopScope(
        onWillPop: showExitPopup,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: Obx(() {

              switch (dash.rxRequestStatus.value) {
                case Status.LOADING:
                  return const Center(child: CircularProgressIndicator());
                case Status.ERROR:
                  if (dash.error.value == 'No internet') {
                    return InterNetExceptionWidget(
                      onPress: () {
                        dash.getData();
                      },
                    );
                  } else {
                    return GeneralExceptionWidget(
                        onPress: () {
                      dash.getData();
                    });
                  }

                case Status.COMPLETED:
                  tour =dashboardTour.read("tour");
                  log(tour.toString());
                  if(tour)
                    {
                      createTutorial();
                      Future.delayed(Duration.zero, showTutorial);
                      // tour = false;
                      dashboardTour.write("tour", false);
                    }
                  BookingDetails? dashData =  dash.dashboardDetails.value.bookingDetails;
                  AgreementDetails? agrData =  dash.dashboardDetails.value.agreementDetails;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dashboard',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,

                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height: MediaQuery.of(context).size.height *
                                      0.005,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .borderColor,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              key: profile,
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(RouteName.profileView);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        'assets/images/Rectangle_4.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Welcome Back',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall,
                                          ),
                                          Text(
                                            '${dash.dashboardDetails.value.name}',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                        child: Text(
                          'Total Statistics',
                          style: FlutterFlowTheme.of(context).titleMedium,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).buttonColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: FlutterFlowTheme.of(context)
                                      .boxShadowcolour,
                                  offset: const Offset(0, 5),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(RouteName.bookingListView);
                              },
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      key: totalBooking,
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .borderColor,
                                          width: 2,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0, 0),
                                        child: Text(
                                          dashData!.bkngTotal ?? "",
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:FlutterFlowTheme.of(context)
                                                        .buttonColor,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your Total Booking ',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
                                                ),
                                          ),
                                          Text(
                                            'Click here to see the total Booking.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
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
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).borderColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: FlutterFlowTheme.of(context)
                                      .boxShadowcolour,
                                  offset: const Offset(0, 5),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    key: totalAgreement,
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .borderColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: Text(
                                        agrData!.totalRowCount ?? "",
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .borderColor,
                                            ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(RouteName.agreementListView);
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your Total Agreement ',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                      FlutterFlowTheme.of(context)
                                                          .white,
                                                ),
                                          ),
                                          Text(
                                            'Click here to see the total Agreement.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                      FlutterFlowTheme.of(context)
                                                          .white,
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
                      Container(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.425,
                                  height: MediaQuery.of(context).size.height * 0.14,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).buttonColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: FlutterFlowTheme.of(context)
                                            .boxShadowcolour,
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,

                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/booking_1.png',
                                            width: 20,
                                            height: 20,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(10, 0, 0, 0),
                                            child: Text(
                                              'Booking Amount',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .white,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        key: bookingAmount,
                                        child: Text('Rs. ${dashData.bamt ?? "0.00"}',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(context)
                                                    .white,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.425,
                                  height: MediaQuery.of(context).size.height * 0.14,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).borderColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: FlutterFlowTheme.of(context)
                                            .boxShadowcolour,
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Agreement Amount',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                      context)
                                                  .white,
                                            ),
                                      ),
                                      Container(
                                        key: agreementAmount,
                                        child: Text(
                                          "Rs. ${agrData!.totalAggrementAmt ?? "0.00"}",
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(context)
                                                    .white,
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

                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: SizedBox(
                            width: Get.width*0.9,
                            child: Text(
                              'Quick Access',
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: InkWell(
                            onTap: () {
                              // Get.toNamed(RouteName.bookingForm1);
                              showPopup();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 100,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).whitecontainer,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: FlutterFlowTheme.of(context)
                                        .boxShadowcolour,
                                    offset: const Offset(0, 5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      key: newBooking,
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .iconcontainerdashboard,
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0, 0),
                                        child: Image.asset(
                                          'assets/images/add_booking.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Book a New Client',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .borderColor,
                                                ),
                                          ),
                                          Text(
                                            'Click here to book a new client',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(RouteName.agreementListView);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 100,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).whitecontainer,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: FlutterFlowTheme.of(context)
                                        .boxShadowcolour,
                                    offset: const Offset(0, 5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      key: newAgreement,
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .iconcontainerdashboard,
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0, 0),
                                        child: Image.asset(
                                          'assets/images/agreement.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Make an Agreement',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                      FlutterFlowTheme.of(context)
                                                          .borderColor,
                                                ),
                                          ),
                                          Text(
                                            'Click here to make an agreement.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                      FlutterFlowTheme.of(context)
                                                          .primaryText,
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
                        ),
                      ),
                    ],
                  );
              }
            }),
          ),
        ),
      ),
    );
  }

  void showPopup()
  {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Form(
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
                      decoration: const InputDecoration(
                        hintText: "Enter Mobile Number"
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        ElevatedButton(
                          child: const Text("Submit"),
                          onPressed: () {
                            if(importController.importText.text=="")
                            {
                              Utils.toastMessage("Please enter Mobile Number");
                            }else
                            {
                              importController.getDataFromCalc(importController.importText.text, context);
                              importController.importText.text = "";
                            }

                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

}
