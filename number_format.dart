import 'package:intl/intl.dart';

Intl.defaultLocale = 'es';
DateFormat.jm().format(DateTime.now());

// Format Number

var f = NumberFormat('###.0#', 'en_US');
print(f.format(12.345));
//  ==> 12.35
