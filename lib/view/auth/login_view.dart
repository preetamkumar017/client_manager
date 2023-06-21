import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_booking/view_models/controller/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final login = Get.put(LoginController());

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
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: const BoxDecoration(),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Text(
                    'Hello Again!',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Glad to see you here',
                      style: FlutterFlowTheme.of(context).labelLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                  child: TextFormField(
                    controller: login.email.value,
                    autofocus: true,
                    obscureText: false,
                    cursorHeight: 25,
                    decoration: InputDecoration(
                      labelText: 'Enter User name',
                      labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).whitecontainer,
                      // contentPadding: const EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                      prefixIcon:  Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).iconColor,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      color: const Color(0xFF0F1113),
                    ),
                    maxLines: null,
                    // validator: _model.emailAddressLoginController1Validator
                    //     .asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
                  child: TextFormField(
                    controller: login.password.value,
                    autofocus: true,
                    cursorHeight: 25,
                    obscureText: login.emailAddressLoginVisibility.value,
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).whitecontainer,
                      prefixIcon:  Icon(
                        Icons.lock_outline,
                        color:  FlutterFlowTheme.of(context).iconColor,
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                              () => login.emailAddressLoginVisibility.value =
                          !login.emailAddressLoginVisibility.value,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          login.emailAddressLoginVisibility.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).loginPageColour,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      color: const Color(0xFF0F1113),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    decoration: const BoxDecoration(),
                    child: FFButtonWidget(
                      onPressed: () {
                        debugPrint('Button pressed ...');
                        login.submit();
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
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        'assets/images/login.png',
                        fit: BoxFit.contain,
                      ),
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
