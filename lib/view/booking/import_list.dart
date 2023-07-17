import 'package:client_manager/data/response/status.dart';
import 'package:client_manager/res/components/general_exception.dart';
import 'package:client_manager/res/components/internet_exceptions_widget.dart';
import 'package:client_manager/view/flutter_flow/flutter_flow_theme.dart';
import 'package:client_manager/view_models/controller/booking/booking_form/import_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImportList extends StatefulWidget {
  const ImportList({Key? key}) : super(key: key);

  @override
  State<ImportList> createState() => _ImportListState();
}

class _ImportListState extends State<ImportList> {
  final importController = Get.put(ImportController());
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (importController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if (importController.error.value == 'No internet') {
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
              itemCount: importController.clientData.value.result!.length,
              itemBuilder: (context, index) {
                var data = importController.clientData.value.result![index];

                final bool isEven = index % 2 == 0;
                Color? color = isEven ? Colors.white : Colors.grey[100];

                return Container(
                  color: color,
                  child: ExpansionTile(
                    title: Text(data.clientName ?? "",style: FlutterFlowTheme.of(context).subtitle1,),
                    subtitle: Text(data.totalCost ?? "",),
                    iconColor: FlutterFlowTheme.of(context).primaryBackground,
                    trailing: const Icon(Icons.arrow_forward,weight: 2.0,size: 30),
                    leading: const Icon(Icons.home),
                    children: [
                      ListTile(
                        title:Text(data.createDate ?? ""),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(data.totalArea ?? "",),
                            Text(data.floorNum ?? "",),
                          ],
                        ) ,
                      )
                    ],
                  ),
                );
              },

            );

          default:
            break;
        }
        return Container();
      }),
    );
  }
}
