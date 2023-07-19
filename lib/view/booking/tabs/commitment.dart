import 'dart:developer';

import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/models/booking_model/commitment_list_model.dart';
import 'package:client_manager/res/components/general_exception.dart';
import 'package:client_manager/res/components/internet_exceptions_widget.dart';
import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_util.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/commitment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCommitment extends StatefulWidget {
  const AddCommitment({Key? key}) : super(key: key);

  @override
  _AddCommitmentState createState() => _AddCommitmentState();
}

class _AddCommitmentState extends State<AddCommitment> {
  final commitController = Get.put(CommitmentController());

  @override
  void initState() {
    super.initState();
    commitController.getCommitList();
    assignVal();
  }
  assignVal()
  {

    commitController.agreementPeriod.value.text = "";
    commitController.completionPeriod.value.text =  "";
    commitController.workOnSite.value.text =  "";
  }

  @override
  void dispose() {
    super.dispose();
    // commitController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: FlutterFlowTheme.of(context).primary,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    // mainAxisSize: MainAxisSize.max,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            color: FlutterFlowTheme
                                .of(context)
                                .iconColor,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Commitments',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme
                              .of(context)
                              .title3,
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Add the Commitment for the ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: 'Chetan Sahu',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).borderColor,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
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
                                FlutterFlowTheme.of(context).iconblueContainer,
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: Icon(
                                Icons.phone,
                                color: FlutterFlowTheme.of(context).iconbluecolour,
                                size: 10,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '9876543212',
                                style: FlutterFlowTheme.of(context).titleSmall,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color:
                                FlutterFlowTheme.of(context).iconblueContainer,
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: Icon(
                                Icons.email,
                                color: FlutterFlowTheme.of(context).iconbluecolour,
                                size: 10,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '  chetansahu@gmail.com',
                                style: FlutterFlowTheme.of(context).titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Select the commitment from following list',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),

                  Obx(() {
                    switch (commitController.rxRequestStatus.value) {
                      case Status.LOADING:
                        return const Center(child: CircularProgressIndicator());
                      case Status.ERROR:
                        if (commitController.error.value == 'No internet') {
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
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: commitController.commitmentList.value.result!.length,
                          itemBuilder: (context, index) {
                            Result commitData = commitController.commitmentList.value.result![index];
                            return Obx(() {
                              return
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 2, 5, 0),
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).borderColor,
                                    ),
                                    child: CheckboxListTile(
                                      value: commitController.checkboxList[index].value,
                                      onChanged: (newValue) async {
                                        commitController.setCheckboxValue(index, newValue ?? false);
                                        debugPrint(newValue.toString());
                                      },
                                      title: Text(
                                        '${commitData.commitment}',
                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context).secondaryText,
                                        ),
                                      ),
                                      tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                      activeColor: FlutterFlowTheme.of(context).borderColor,
                                      checkColor: FlutterFlowTheme.of(context).secondaryBackground,
                                      dense: true,
                                      controlAffinity: ListTileControlAffinity.trailing,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),

                                    ),
                                  ),
                                );
                            });
                          },
                        );

                      default:
                        return const SizedBox();
                    }
                  }),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller:commitController.agreementPeriod.value,
                            focusNode: commitController.agreementPeriodFocusNode.value,
                            // autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Agreement Date',
                              labelStyle: FlutterFlowTheme.of(context).labelLarge,
                              hintText: 'Enter Date',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).borderColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).borderColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              suffixIcon: Icon(
                                Icons.date_range,
                                color: FlutterFlowTheme.of(context).iconbluecolour,
                                size: 18,
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            minLines: 1,
                            keyboardType: TextInputType.none,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime(2030));

                              if (pickedDate != null) {
                                String formattedDate =
                                DateFormat('dd-MM-yyyy')
                                    .format(pickedDate);
                                commitController.agreementPeriod.value.text = formattedDate;
                              }

                            },
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: TextFormField(
                              controller:commitController.completionPeriod.value,
                              focusNode: commitController.completionPeriodFocusNode.value,
                              // autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Project Completion',
                                labelStyle: FlutterFlowTheme.of(context).labelLarge,
                                hintText: 'Enter Date',
                                hintStyle: FlutterFlowTheme.of(context).bodySmall,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).borderColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).borderColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                suffixIcon: Icon(
                                  Icons.date_range,
                                  color:
                                  FlutterFlowTheme.of(context).iconbluecolour,
                                  size: 18,
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              minLines: 1,
                              keyboardType: TextInputType.none ,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2030));

                                if (pickedDate != null) {
                                  String formattedDate =
                                  DateFormat('dd-MM-yyyy')
                                      .format(pickedDate);
                                  commitController.completionPeriod.value.text = formattedDate;
                                }

                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    child: TextFormField(
                      controller:commitController.workOnSite.value,
                      focusNode: commitController.workOnSiteFocusNode.value,
                      // autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Work Start Date',
                        labelStyle: FlutterFlowTheme.of(context).labelLarge,
                        hintText: 'Enter Date',
                        hintStyle: FlutterFlowTheme.of(context).bodySmall,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).borderColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).borderColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: Icon(
                          Icons.date_range,
                          color: FlutterFlowTheme.of(context).iconbluecolour,
                          size: 18,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      minLines: 1,
                      keyboardType: TextInputType.none ,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2030));

                        if (pickedDate != null) {
                          String formattedDate =
                          DateFormat('dd-MM-yyyy')
                              .format(pickedDate);
                        commitController.workOnSite.value.text = formattedDate;
                        }

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: FFButtonWidget(
                        showLoadingIndicator: commitController.loading.value,
                      onPressed: () {
                          if(commitController.agreementPeriod.value=="")
                            {
                              Utils.snackBar("Filed Missing", "Please Fill Agreement Period ");
                            }else if(commitController.completionPeriod.value=="")
                              {
                                Utils.snackBar("Filed Missing", "Please Fill Completion Period ");
                              }else if(commitController.workOnSite.value=="")
                                {
                                  Utils.snackBar("Filed Missing", "Please Fill Work On Site ");
                                }else
                                      {
                                        commitController.submit();
                                      }
                      },
                      text: 'Submit',
                      options: FFButtonOptions(
                        width: 100,
                        height: 40,
                        color: FlutterFlowTheme.of(context).buttonColor,
                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  )
                ],
              ),
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
    );
  }
}
