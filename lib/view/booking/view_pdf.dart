import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ViewPdf extends StatelessWidget {
  String path;

  ViewPdf(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,width: Get.width,child: ViewPdf(path));
  }
}
