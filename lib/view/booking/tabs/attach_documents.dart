import 'dart:developer';

import 'package:client_manager/utils/utils.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/attach_document.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AttachDocuments extends StatefulWidget {
  final VoidCallback onNextTab;
  final VoidCallback onBackTab;
  const AttachDocuments({Key? key, required this.onNextTab, required this.onBackTab}) : super(key: key);

  @override
  State<AttachDocuments> createState() => _AttachDocumentsState();
}

class _AttachDocumentsState extends State<AttachDocuments> {
  AttachDocumentsController adc = AttachDocumentsController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 0.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme
            .of(context)
            .primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.666,
          height: 95.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme
                .of(context)
                .alternate,
            borderRadius: BorderRadius.circular(10.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme
                  .of(context)
                  .alternate,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding:
                const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Attach Document',
                      style: FlutterFlowTheme
                          .of(context)
                          .title3,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Form(
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Select Documents',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                          spacing: 20.0,
                          alignment: WrapAlignment.start,
                          children: [

                            Obx(() {
                              return ChoiceChip(label: const Text("Aadhaar Card Copy"),
                                selected: adc.aadhaar.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                if(value)
                                  {
                                    _showBottomSheet(context, "aadhaar");
                                  }else
                                    {
                                      adc.aadhaar.value = false;
                                      adc.aadhaarFile.value = null;
                                    }

                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.aadhaar.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.aadhaar.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Pan Card Copy"),
                                selected: adc.pan.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "pan");
                                  }else
                                  {
                                    adc.pan.value = false;
                                    adc.panFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.pan.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.pan.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Latest Electricity bill copy"),
                                selected: adc.bill.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "bill");
                                  }else
                                  {
                                    adc.bill.value = false;
                                    adc.billFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.bill.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.bill.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Registry copy"),
                                selected: adc.registry.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "registry");
                                  }else
                                  {
                                    adc.registry.value = false;
                                    adc.registryFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.registry.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.registry.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Latest B1"),
                                selected: adc.b1.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "b1");
                                  }else
                                  {
                                    adc.b1.value = false;
                                    adc.b1File.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.b1.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.b1.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Khasra Map"),
                                selected: adc.khasra.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "khasra");
                                  }else
                                  {
                                    adc.khasra.value = false;
                                    adc.khasraFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.khasra.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.khasra.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Approved Map TNCP/ Municipal Corporation"),
                                selected: adc.tncp.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "tncp");
                                  }else
                                  {
                                    adc.tncp.value = false;
                                    adc.tncpFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.tncp.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.tncp.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Property Tax Receipt"),
                                selected: adc.tax.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  if(value)
                                  {
                                    _showBottomSheet(context, "tax");
                                  }else
                                  {
                                    adc.tax.value = false;
                                    adc.taxFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.tax.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.tax.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),

                            Obx(() {
                              return ChoiceChip(label: const Text("Any Other"),
                                selected: adc.other.value,
                                selectedColor: FlutterFlowTheme
                                    .of(context)
                                    .borderColor,
                                avatar: const Icon(Icons.attach_file_sharp),
                                onSelected: (value) {
                                  adc.other.value = value;

                                  if(value)
                                  {
                                    _showBottomSheet(context, "other");
                                  }else
                                  {
                                    adc.other.value = false;
                                    adc.otherFile.value = null;
                                  }
                                },

                                elevation: 1.0,
                                backgroundColor:Colors.white,

                                labelStyle: adc.other.value ? FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ):FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                                iconTheme:  IconThemeData(color: adc.other.value ? Colors.white: FlutterFlowTheme.of(context).iconColor,
                                  size: 18.0,),
                              );
                            }),
                          ],
                        ),

                        Obx(() {
                          if(adc.otherFile.value != null){
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 20.0),
                              child: TextFormField(
                                controller: adc.otherTC.value,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Other Document Name',
                                  labelStyle:
                                  FlutterFlowTheme.of(context)
                                      .bodyText1,
                                  hintStyle:
                                  FlutterFlowTheme.of(context)
                                      .subtitle2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                      FlutterFlowTheme.of(context)
                                          .borderColor,
                                      width: 1.0,
                                    ),
                                    borderRadius:
                                    BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                      FlutterFlowTheme.of(context)
                                          .borderColor,
                                      width: 1.0,
                                    ),
                                    borderRadius:
                                    BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius:
                                    BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius:
                                    BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor:
                                  FlutterFlowTheme.of(context)
                                      .alternate,
                                  contentPadding:
                                  const EdgeInsetsDirectional
                                      .fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1,
                                maxLines: null,
                              ),
                            );
                          }
                          else
                          {
                            return SizedBox();
                          }
                        }),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      widget.onBackTab();
                                    },
                                    text: 'Back',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 30.0,
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme
                                          .of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme
                                          .of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .primaryText,
                                      ),
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {

                                    adc.submit();

                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width *
                                          0.35,
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height *
                                          0.04,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .buttonColor,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Finish',
                                              style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .of(
                                                    context)
                                                    .btnText,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 100.0,
                                              child: VerticalDivider(
                                                thickness: 1.0,
                                                indent: 10.0,
                                                endIndent: 10.0,
                                                color:
                                                FlutterFlowTheme
                                                    .of(context)
                                                    .btnText,
                                              ),
                                            ),
                                            Icon(
                                              Icons.celebration,
                                              color: FlutterFlowTheme
                                                  .of(context)
                                                  .btnText,
                                              size: 20.0,
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context,String chipName) {
    final picker = ImagePicker();
    XFile? pickedFile;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.only(top: 20.0),
          height: Get.height*0.15,
          child: Column(
            children: [
              Center(
                child: Text('Upload $chipName',
                  style: FlutterFlowTheme.of(context).subtitle1,),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  IconButton(
                    onPressed: () async {
                      pickedFile = await picker.pickImage(source: ImageSource.gallery);
                      if(pickedFile != null)
                        {
                          chipAsign(pickedFile!,chipName);
                          Get.back();
                        }
                    },
                    icon: Icon(
                      Icons.folder_rounded,
                      color: FlutterFlowTheme.of(context).buttonColor,
                      size: 50,
                    ),
                  ),

                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  IconButton(
                    onPressed: () async {
                      pickedFile = await picker.pickImage(source: ImageSource.camera);
                      if(pickedFile != null)
                      {
                        chipAsign(pickedFile!,chipName);
                        Get.back();
                      }
                    },
                    icon: Icon(
                      Icons.photo_camera,
                      color: FlutterFlowTheme.of(context).buttonColor,
                      size: 50,
                    ),
                  ),

                ],
              ),
            ],
          ),
        );
      },
    );

  }

  void chipAsign(XFile pickedFile, String chipName)
  {
    //debugPrint(pickedFile.name);
    switch(chipName)
    {
      case "aadhaar":
            adc.aadhaar.value = true;
            adc.aadhaarFile.value = pickedFile;
           break;
      case "pan":
        adc.pan.value = true;
        adc.panFile.value = pickedFile;
        break;
      case "bill":
        adc.bill.value = true;
        adc.billFile.value = pickedFile;
        break;
      case "registry":
        adc.registry.value = true;
        adc.registryFile.value = pickedFile;
        break;
      case "b1":
        adc.b1.value = true;
        adc.b1File.value = pickedFile;
        break;
      case "khasra":
        adc.khasra.value = true;
        adc.khasraFile.value = pickedFile;
        break;
      case "tncp":
        adc.tncp.value = true;
        adc.tncpFile.value = pickedFile;
        break;
      case "tax":
        adc.tax.value = true;
        adc.taxFile.value = pickedFile;
        break;
      case "other":
        adc.other.value = true;
        adc.otherFile.value = pickedFile;
        break;
    }
  }
}



