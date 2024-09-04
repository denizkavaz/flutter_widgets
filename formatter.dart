import 'package:intl/intl.dart';


String formatDate(DateTime datetime) {
 
  return DateFormat('dd-MM-yyyy').format(datetime);
}

String formatIntegerWithThousandSeparator(int number) {
  final formatter = NumberFormat('###,###', 'tr_TR'); // 'en_US' ensures dot as a thousand separator
  return formatter.format(number);
}
