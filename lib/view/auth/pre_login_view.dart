import 'package:client_booking/res/routes/routes_name.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreLoginView extends StatefulWidget {
  const PreLoginView({Key? key}) : super(key: key);

  @override
  _PreLoginViewState createState() => _PreLoginViewState();
}

class _PreLoginViewState extends State<PreLoginView> {


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
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: const BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        'assets/images/Group_30.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Text(
                    'Discover Your ',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dream House Booking ',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          color:
                          FlutterFlowTheme.of(context).loginPageColour,
                        ),
                      ),
                      TextSpan(
                        text: 'Here.',
                        style: FlutterFlowTheme.of(context).titleLarge,
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    'Explore all the most exciting facility\n based on booking new clients ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  decoration: const BoxDecoration(),
                  child: FFButtonWidget(
                    onPressed: () {
                      Get.toNamed(RouteName.loginView);
                    },
                    text: 'Click here for Log In',
                    options: FFButtonOptions(
                      width: 350,
                      height: 60,
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).loginPageColour,
                      textStyle:
                      FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).white,
                      ),
                      elevation: 5,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
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
