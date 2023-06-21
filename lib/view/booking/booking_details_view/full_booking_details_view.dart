import 'package:client_booking/view/booking/booking_details_view/attach_documents_view.dart';
import 'package:client_booking/view/booking/booking_details_view/client_info_view.dart';
import 'package:client_booking/view/booking/booking_details_view/decision_maker_view.dart';
import 'package:client_booking/view/booking/booking_details_view/payee_view.dart';
import 'package:client_booking/view/booking/booking_details_view/plot_details_view.dart';
import 'package:client_booking/view/booking/booking_details_view/transaction_view.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';

class FullBookingDetailsView extends StatefulWidget {
  const FullBookingDetailsView({Key? key}) : super(key: key);

  @override
  _FullBookingDetailsViewState createState() => _FullBookingDetailsViewState();
}

class _FullBookingDetailsViewState extends State<FullBookingDetailsView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
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
        child: ListView(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon:  Icon(
                      Icons.arrow_back_sharp,
                      color: FlutterFlowTheme.of(context).iconColor,
                      size: 24.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Booking Details',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 1.0,
                            child: Stack(
                              children: [
                                PageView(
                                  controller: PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children:  [
                                    ClientInfoView(),
                                    DecisionMaker(),
                                    PayeeView(),
                                    TransactionDetailsView(),
                                    PlotDetailsView(),
                                    AttachDocumentsDetails()
                                  ],
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller:
                                          PageController(initialPage: 0),
                                      count: 6,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {},
                                      effect: smooth_page_indicator
                                          .ExpandingDotsEffect(
                                        expansionFactor: 2.0,
                                        spacing: 8.0,
                                        radius: 16.0,
                                        dotWidth: 16.0,
                                        dotHeight: 16.0,
                                        dotColor: const Color(0xFF9E9E9E),
                                        activeDotColor:
                                            FlutterFlowTheme.of(context)
                                                .borderColor,
                                        paintStyle: PaintingStyle.fill,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
