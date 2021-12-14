import 'package:flutter_sqflite/utils/dp_helper.dart';

class Car {
  late int id;
  String? name;
  int? miles;
  Car({this.name, required this.id, this.miles});

  Car.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    miles = map['miles'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnMiles: miles,
    };
  }
}
