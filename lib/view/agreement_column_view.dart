// ignore_for_file: avoid_print

import 'package:client_booking/view/flutter_flow/flutter_flow_drop_down.dart';
import 'package:client_booking/view/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgreementColumnView extends StatefulWidget {
  const AgreementColumnView({Key? key}) : super(key: key);

  @override
  _AgreementColumnViewState createState() => _AgreementColumnViewState();
}

class _AgreementColumnViewState extends State<AgreementColumnView> {


  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unFocusNode = FocusNode();

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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unFocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.arrow_back_sharp,
                      color: FlutterFlowTheme.of(context).iconColor,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Column List',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Select the anubadh column',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 0.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 0.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .borderColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: FlutterFlowDropDown<String>(
                                    initialOption:
                                        'Column C',
                                    options: const [
                                      'Column  A',
                                      'Column B',
                                      'Column C'
                                    ],
                                    onChanged: (val) {},
                                    width: 180.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    hintText: 'Please select...',
                                    fillColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 0.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 5.0),
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'YEs',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              icon: FontAwesomeIcons.thumbsUp,
                              onTap: () {
                                if (kDebugMode) {
                                  //debugPrint('SlidableActionWidget pressed ...');
                                }
                              },
                            ),
                            IconSlideAction(
                              caption: 'No',
                              color: FlutterFlowTheme.of(context).customColor3,
                              icon: Icons.close,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.circleNotch,
                              size: 15.0,
                            ),
                            title: Text(
                              'भूमि की रजिस्ट्री कापी प्रदान करेंगे',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.of(context).btnText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Yes',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              icon: FontAwesomeIcons.thumbsUp,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                            IconSlideAction(
                              caption: 'No',
                              color: FlutterFlowTheme.of(context).customColor3,
                              icon: Icons.close,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.circleNotch,
                              size: 15.0,
                            ),
                            title: Text(
                              'निर्माण नक्शा स्वयं के निर्देष पर बनवा कर हस्ताक्षर करके निर्माण कार्य हेतु दिये',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.of(context).btnText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Yes',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              icon: FontAwesomeIcons.thumbsUp,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                            IconSlideAction(
                              caption: 'No',
                              color: FlutterFlowTheme.of(context).customColor3,
                              icon: Icons.close,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.circleNotch,
                              size: 15.0,
                            ),
                            title: Text(
                              'किसी भी प्रकार के लाइट, पंखे गीजर, टीवी, कोई भी applinces, फर्निचर, चिमनी, कैमरा, dvr, अन्य सिस्टम कार्य में शामिल हैं ?',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.of(context).btnText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Yes',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              icon: FontAwesomeIcons.thumbsUp,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                            IconSlideAction(
                              caption: 'No',
                              color: FlutterFlowTheme.of(context).customColor3,
                              icon: Icons.close,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.circleNotch,
                              size: 15.0,
                            ),
                            title: Text(
                              'प्लिन्थ भराई भुमि स्वामी के जमीन से 1’-6” किया जाएगा, अतिरिक्त भराई पार्टी न. 2 35/- क्यूबिक फिट से अनुबंध',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.of(context).btnText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Yes',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              icon: FontAwesomeIcons.thumbsUp,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                            IconSlideAction(
                              caption: 'No',
                              color: FlutterFlowTheme.of(context).customColor3,
                              icon: Icons.close,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.circleNotch,
                              size: 15.0,
                            ),
                            title: Text(
                              'प्लिन्थ के ऊपर से अंदर बाहर लाल ईंट, बाउन्ड्रीवाल, सेप्टिक, पेरफिट इत्यादि में काली ईंट लगेगी',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.of(context).btnText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 5.0, 15.0, 5.0),
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Yes',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              icon: FontAwesomeIcons.thumbsUp,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                            IconSlideAction(
                              caption: 'No',
                              color: FlutterFlowTheme.of(context).customColor3,
                              icon: Icons.close,
                              onTap: () {
                                //debugPrint('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.circleNotch,
                              size: 15.0,
                            ),
                            title: Text(
                              'किसी भी प्रकार के लाइट, पंखे गीजर, टीवी, कोई भी applinces, फर्निचर, चिमनी, कैमरा, dvr, अन्य सिस्टम कार्य में शामिल हैं ?',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: FlutterFlowTheme.of(context).btnText,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
