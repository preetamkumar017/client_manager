import 'dart:developer';
import 'dart:io';

import 'package:android_path_provider/android_path_provider.dart';
import 'package:client_booking/utils/utils.dart';
import 'package:client_booking/view/booking/view_pdf.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DownloadFile extends GetxController
{

  Future openFile( String url, String? fileName) async {
    final file = await downloadFile(url, fileName!);
    if (file == null) return;

    log('Path: ${file.path}');
    Utils.toastMessage("Successfully downloaded to: ${file.path}");

    // Get.to(ViewPdf(file.path));

    // OpenFile.open(file.path);
    // OpenFile.open(file.path);
  }

  Future<File?> downloadFile(String url, String name) async {
    final appStorage = await AndroidPathProvider.downloadsPath;
    final file = File('${appStorage}/$name');
    try {
      final response = await Dio().get(url,
          options: Options(
              responseType: ResponseType.bytes,
              followRedirects: false,
              receiveTimeout: Duration(minutes: 5)));

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();
      return file;
    } catch (e) {
      return null;
    }
  }
}