import 'package:client_manager/view/flutter_flow/flutter_flow_choice_chips.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_widgets.dart';
import 'package:client_manager/view_models/controller/booking/booking_details_controller.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/plot_details.dart';
import 'package:client_manager/models/booking_model/booking_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlotDetailsEdit extends StatefulWidget {
  const PlotDetailsEdit({Key? key}) : super(key: key);

  @override
  State<PlotDetailsEdit> createState() => _PlotDetailsEditState();
}

class _PlotDetailsEditState extends State<PlotDetailsEdit> {
  final pdc = Get.put(PlotDetailsEditController());
  final bkc = Get.put(BookingDetailsController());
  late PlotDetail? data ;
  @override
  void initState() {
    super.initState();

    data = bkc.bookingDetails.value.result!.plotDetail;
    pdc.bookingId.value = bkc.bookingDetails.value.result!.clientInfo!.id!;

    if(data!=null)
    {
      pdc.id.value = data!.id!;
      pdc.location.value.text = data!.plotLocation ?? "";
      pdc.plotNumber.value.text = data!.plotNo ?? "";
      pdc.plotSize.value.text = data!.plotSize ?? "";
      pdc.depth.value.text = data!.plotDepth ?? "";

      pdc.plotFacing.value = data!.plotFacing ?? "";
      pdc.plotFacingList.value = [data!.plotFacing ?? ""];

      pdc.roads.value = data!.numRoad ?? "";
      if(pdc.roads.value=="1")
        {
          pdc.roadsList.value = ["One"];
        }else if(pdc.roads.value=="2")
          {
            pdc.roadsList.value = ["Two"];
          }else
            {
              pdc.roadsList.value = ["Three"];
            }


    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: ListView(
            children: [

              Container(
                margin: const EdgeInsets.only(left: 10,bottom: 20,top: 10),
                child: Stack(
                  children:[

                    IconButton(onPressed: (){
                      Get.back();
                    }, icon:  Icon(Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).iconColor)),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(
                          0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            'Edit Plot Details',
                            style:
                            FlutterFlowTheme
                                .of(context)
                                .title3,
                          ),
                        ],
                      ),
                    )],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [

                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                          child: Form(
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 15.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: pdc.location.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Plot Location',
                                              labelStyle: FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Plot Location',
                                              hintStyle: FlutterFlowTheme.of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
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
                                              fillColor: FlutterFlowTheme.of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style:
                                            FlutterFlowTheme.of(context).bodyText1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: pdc.tahsil.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: ' Tahsil',
                                              labelStyle: FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Tahsil',
                                              hintStyle: FlutterFlowTheme.of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
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
                                              fillColor: FlutterFlowTheme.of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style:
                                            FlutterFlowTheme.of(context).bodyText1,
                                            maxLines: null,
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: pdc.district.value,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'District',
                                            labelStyle:
                                            FlutterFlowTheme.of(context).bodyText1,
                                            hintText: 'Enter District',
                                            hintStyle:
                                            FlutterFlowTheme.of(context).subtitle2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context)
                                                    .borderColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context)
                                                    .borderColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context).alternate,
                                            contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 0.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1,
                                          maxLines: null,
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: pdc.plotNumber.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: ' Plot No',
                                              labelStyle: FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Plot No',
                                              hintStyle: FlutterFlowTheme.of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
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
                                              fillColor: FlutterFlowTheme.of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style:
                                            FlutterFlowTheme.of(context).bodyText1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: pdc.plotSize.value,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Plot Size',
                                            labelStyle:
                                            FlutterFlowTheme.of(context).bodyText1,
                                            hintText: 'Enter Plot Size',
                                            hintStyle:
                                            FlutterFlowTheme.of(context).subtitle2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context)
                                                    .borderColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context)
                                                    .borderColor,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                            FlutterFlowTheme.of(context).alternate,
                                            contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 0.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyText1,
                                          maxLines: null,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Plot Facing',
                                        style: FlutterFlowTheme.of(context).bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowChoiceChips(
                                          initialized: true,
                                          initiallySelected:pdc.plotFacingList ,
                                          options: const [
                                            ChipData('North', Icons.north),
                                            ChipData('South', Icons.south),
                                            ChipData('East', Icons.east),
                                            ChipData('West', Icons.west)
                                          ],
                                          onChanged: (val){
                                            switch(val!.first.toString())
                                            {
                                              case "North":
                                                {
                                                  pdc.plotFacing.value = "North";
                                                  break;
                                                }
                                              case "South":
                                                {
                                                  pdc.plotFacing.value = "South";
                                                  break;
                                                }
                                              case "East":
                                                {
                                                  pdc.plotFacing.value = "East";
                                                  break;
                                                }
                                              case "West":
                                                {
                                                  pdc.plotFacing.value = "West";
                                                  break;
                                                }

                                            }
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .borderColor,
                                            textStyle: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                            iconColor: Colors.white,
                                            iconSize: 18.0,
                                            elevation: 1.0,
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Colors.white,
                                            textStyle: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                            ),
                                            iconColor:
                                            FlutterFlowTheme.of(context).iconColor,
                                            iconSize: 18.0,
                                            elevation: 1.0,
                                          ),
                                          chipSpacing: 10.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Number of Roads',
                                        style: FlutterFlowTheme.of(context).bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowChoiceChips(
                                          initialized: true,
                                          initiallySelected: pdc.roadsList,
                                          options: const [
                                            ChipData('One', Icons.circle),
                                            ChipData('Two', Icons.circle),
                                            ChipData('Three', Icons.circle)
                                          ],
                                          onChanged: (val) {
                                            switch(val!.first.toString())
                                            {
                                              case "One":
                                                {
                                                  pdc.roads.value = "1";
                                                  break;
                                                }
                                              case "Two":
                                                {
                                                  pdc.roads.value = "2";
                                                  break;
                                                }
                                              case "Three":
                                                {
                                                  pdc.roads.value = "3";
                                                  break;
                                                }
                                            }
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .borderColor,
                                            textStyle: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                            iconColor: Colors.white,
                                            iconSize: 18.0,
                                            elevation: 1.0,
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Colors.white,
                                            textStyle: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                            ),
                                            iconColor:
                                            FlutterFlowTheme.of(context).iconColor,
                                            iconSize: 18.0,
                                            elevation: 1.0,
                                          ),
                                          chipSpacing: 20.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            controller: pdc.depth.value,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                              'Depth of the plot from road level',
                                              labelStyle: FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                              hintText: 'Enter Depth',
                                              hintStyle: FlutterFlowTheme.of(context)
                                                  .subtitle2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
                                                      .borderColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(context)
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
                                              fillColor: FlutterFlowTheme.of(context)
                                                  .alternate,
                                              contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                            ),
                                            style:
                                            FlutterFlowTheme.of(context).bodyText1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                              Get.back();
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
                                              color: FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                              textStyle: FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(context)
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
                                          pdc.submit();
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: MediaQuery.of(context).size.width *
                                              0.35,
                                          height: MediaQuery.of(context).size.height *
                                              0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).buttonColor,
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Text(
                                            'Update',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .btnText,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
