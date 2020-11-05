import 'package:flutter/services.dart';
import 'package:uuid/uuid_util.dart';

class Hospital {
  String name;
  String address;
  HospitalImages images;
  String openingTime;
  String closingTime;
}

class HospitalImages {
  List<String> images;
}

class HospitalHolidays {}

class HospitalWorkindDays {
  String Date;
}
