import 'package:client_booking/view/flutter_flow/flutter_flow_util.dart';

String myDateFormat(String date)
{
  return DateFormat('dd-MMM-yyyy').format(DateTime.parse(date));
}

String myDateFormatMM(String date)
{
  return DateFormat('dd-MM-yyyy').format(DateTime.parse(date));
}

String capitalize(String s) {
  if (s == "" || s.isEmpty) {
    return s;
  }
  return s[0].toUpperCase() + s.substring(1);
}