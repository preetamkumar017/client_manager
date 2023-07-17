import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/res/components/general_exception.dart';
import 'package:client_manager/res/components/get_version.dart';
import 'package:client_manager/res/components/internet_exceptions_widget.dart';
import 'package:client_manager/res/components/logout.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view_models/controller/home/profile_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/home/profile_model.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final profile = Get.put(ProfileController());
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    profile.getData();
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
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Obx(() {
            switch (profile.rxRequestStatus.value) {
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator());
              case Status.ERROR:
                if (profile.error.value == 'No internet') {
                  return InterNetExceptionWidget(
                    onPress: () {
                      profile.getData();
                    },
                  );
                } else {
                  return GeneralExceptionWidget(onPress: () {
                    profile.getData();
                  });
                }

              case Status.COMPLETED:
                Result data =  profile.profileDetails.value.result!;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: const BoxDecoration(),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Text(
                            'Profile',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).borderColor,
                                  width: 4,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/user_pic.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            data.employeeName ?? "",
                            style: FlutterFlowTheme.of(context).titleMedium,
                          ),
                        ),
                        Text(
                          data.designation ?? "",
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                        Text(
                          data.mobileNo ?? "",
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        // Align(
                        //   alignment: const AlignmentDirectional(0, 0),
                        //   child: Padding(
                        //     padding:
                        //         const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        //     child: Container(
                        //       width: MediaQuery.of(context).size.width * 0.9,
                        //       height: 100,
                        //       decoration: BoxDecoration(
                        //         color: FlutterFlowTheme.of(context).buttonColor,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             blurRadius: 4,
                        //             color: FlutterFlowTheme.of(context)
                        //                 .boxShadowcolour,
                        //             offset: const Offset(0, 5),
                        //           )
                        //         ],
                        //         borderRadius: BorderRadius.circular(15),
                        //       ),
                        //       child: Padding(
                        //         padding:
                        //             const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        //         child: Row(
                        //           mainAxisSize: MainAxisSize.max,
                        //           mainAxisAlignment: MainAxisAlignment.start,
                        //           children: [
                        //             Container(
                        //               width: 60,
                        //               height: 60,
                        //               decoration: BoxDecoration(
                        //                 color: FlutterFlowTheme.of(context)
                        //                     .secondaryBackground,
                        //                 shape: BoxShape.circle,
                        //                 border: Border.all(
                        //                   color: FlutterFlowTheme.of(context)
                        //                       .borderColor,
                        //                   width: 2,
                        //                 ),
                        //               ),
                        //               child: Align(
                        //                 alignment: const AlignmentDirectional(0, 0),
                        //                 child: Text(
                        //                   '80',
                        //                   style: FlutterFlowTheme.of(context)
                        //                       .headlineSmall
                        //                       .override(
                        //                         fontFamily: 'Poppins',
                        //                         color:
                        //                             FlutterFlowTheme.of(context)
                        //                                 .buttonColor,
                        //                       ),
                        //                 ),
                        //               ),
                        //             ),
                        //             Padding(
                        //               padding: const EdgeInsetsDirectional.fromSTEB(
                        //                   15, 0, 0, 0),
                        //               child: Column(
                        //                 mainAxisSize: MainAxisSize.max,
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.center,
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   Text(
                        //                     'Your Total Booking ',
                        //                     style: FlutterFlowTheme.of(context)
                        //                         .titleMedium
                        //                         .override(
                        //                           fontFamily: 'Poppins',
                        //                           color: FlutterFlowTheme.of(
                        //                                   context)
                        //                               .white,
                        //                         ),
                        //                   ),
                        //                   Text(
                        //                     'Click here to see the total Booking.',
                        //                     style: FlutterFlowTheme.of(context)
                        //                         .bodyMedium
                        //                         .override(
                        //                           fontFamily: 'Poppins',
                        //                           color: FlutterFlowTheme.of(
                        //                                   context)
                        //                               .white,
                        //                         ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Align(
                        //   alignment: const AlignmentDirectional(0, 0),
                        //   child: Padding(
                        //     padding:
                        //         const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        //     child: Container(
                        //       width: MediaQuery.of(context).size.width * 0.9,
                        //       height: 100,
                        //       decoration: BoxDecoration(
                        //         color: FlutterFlowTheme.of(context).borderColor,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             blurRadius: 4,
                        //             color: FlutterFlowTheme.of(context)
                        //                 .boxShadowcolour,
                        //             offset: const Offset(0, 5),
                        //           )
                        //         ],
                        //         borderRadius: BorderRadius.circular(15),
                        //       ),
                        //       child: Padding(
                        //         padding:
                        //             const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        //         child: Row(
                        //           mainAxisSize: MainAxisSize.max,
                        //           mainAxisAlignment: MainAxisAlignment.start,
                        //           children: [
                        //             Container(
                        //               width: 60,
                        //               height: 60,
                        //               decoration: BoxDecoration(
                        //                 color: FlutterFlowTheme.of(context)
                        //                     .secondaryBackground,
                        //                 shape: BoxShape.circle,
                        //                 border: Border.all(
                        //                   color: FlutterFlowTheme.of(context)
                        //                       .borderColor,
                        //                   width: 2,
                        //                 ),
                        //               ),
                        //               child: Align(
                        //                 alignment: const AlignmentDirectional(0, 0),
                        //                 child: Text(
                        //                   '75',
                        //                   style: FlutterFlowTheme.of(context)
                        //                       .headlineSmall
                        //                       .override(
                        //                         fontFamily: 'Poppins',
                        //                         color:
                        //                             FlutterFlowTheme.of(context)
                        //                                 .borderColor,
                        //                       ),
                        //                 ),
                        //               ),
                        //             ),
                        //             Padding(
                        //               padding: const EdgeInsetsDirectional.fromSTEB(
                        //                   15, 0, 0, 0),
                        //               child: Column(
                        //                 mainAxisSize: MainAxisSize.max,
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.center,
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   Text(
                        //                     'Your Total Agreement ',
                        //                     style: FlutterFlowTheme.of(context)
                        //                         .titleMedium
                        //                         .override(
                        //                           fontFamily: 'Poppins',
                        //                           color: FlutterFlowTheme.of(
                        //                                   context)
                        //                               .white,
                        //                         ),
                        //                   ),
                        //                   Text(
                        //                     'Click here to see the total Agreement.',
                        //                     style: FlutterFlowTheme.of(context)
                        //                         .bodyMedium
                        //                         .override(
                        //                           fontFamily: 'Poppins',
                        //                           color: FlutterFlowTheme.of(
                        //                                   context)
                        //                               .white,
                        //                         ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: InkWell(
                            onTap: () {
                              showDialog<bool>(
                                context: context,
                                builder: (BuildContext context) {
                                  return const LogoutConfirmationDialog();
                                },
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .whitecontainer,
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.logout,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColor,
                                      size: 24,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        'Logout',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                      ),
                                    ),
                                  ],
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
                              width: MediaQuery.of(context).size.width,
                              height: 30,
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
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: FutureBuilder(
                                  future: getVersion(),
                                  builder: (context, snapshot) {
                                    return RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Version: ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ),
                                          TextSpan(
                                            text: snapshot.data,
                                            style: const TextStyle(),
                                          )
                                        ],
                                        style:
                                            FlutterFlowTheme.of(context).bodyMedium,
                                      ),
                                    );
                                  }
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
            }
          }),
        ),
      ),
    );
  }
}
