import 'package:intl/intl.dart';

abstract class DateFormats {
  static var formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  static var dMmmy = DateFormat('d MMM y');
}
