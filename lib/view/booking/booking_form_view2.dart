import 'dart:developer';

import 'package:client_manager/view/booking/tabs/attach_documents.dart';
import 'package:client_manager/view/booking/tabs/client_info_tab.dart';
import 'package:client_manager/view/booking/tabs/decision_maker.dart';
import 'package:client_manager/view/booking/tabs/payee.dart';
import 'package:client_manager/view/booking/tabs/plot_details.dart';
import 'package:client_manager/view/booking/tabs/transaction.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/client_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingFormView2 extends StatefulWidget {
  const BookingFormView2({Key? key}) : super(key: key);

  @override
  _BookingFormView2State createState() =>
      _BookingFormView2State();
}

class _BookingFormView2State extends State<BookingFormView2>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final cIController = Get.put(ClientInfoController());


  late final TabController _tabController = TabController(
      length:  6, vsync: this);


  @override
  void initState() {
    super.initState();
    // cIController.tabs.value = false;
    // _tabController.addListener(() {

    // });
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    // cIController.dispose();
    _tabController.dispose();

    super.dispose();
  }

  void goToNextTab() {
    if (!cIController.tabs.value ) {
      _tabController.animateTo(_tabController.index + 1);
    }
  }

  void goBackTab() {
    if (!cIController.tabs.value ) {
      _tabController.animateTo(_tabController.index - 1);

    }
  }

  void handleNext() {
    //debugPrint("message");
    goToNextTab();
  }

  void handleBack() {
    goBackTab();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme
          .of(context)
          .primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                  10.0, 20.0, 0.0, 0.0),
              child: Stack(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: (){
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Booking Form',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme
                          .of(context)
                          .title3,
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
                  'Fill the form to generate booking form',
                  style: FlutterFlowTheme
                      .of(context)
                      .bodyText1,
                ),
              ],
            ),
            Expanded(
              child: Obx(() {
                return Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: cIController.tabs.value ? [
                           ClientInfo( onNextTab: handleNext),
                        ] :
                        [
                          ClientInfo( onNextTab: handleNext),
                          DecisionMaker(onNextTab: handleNext,onBackTab:handleBack),
                          Payee(onNextTab: handleNext,onBackTab:handleBack),
                          Transaction(onNextTab: handleNext,onBackTab:handleBack),
                          PlotDetails(onNextTab: handleNext,onBackTab:handleBack),
                          AttachDocuments(onNextTab: handleNext,onBackTab:handleBack),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

}
