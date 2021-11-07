import 'dart:convert';

import 'dart:core';

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));

String employeeToJson(Employee data) => json.encode(data.toJson());

class Employee {
  int employeeId;
  String employeeType;
  String employeeNik;
  String employeeName;

  Employee(
      {this.employeeId,
      this.employeeType,
      this.employeeNik,
      this.employeeName});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        employeeId: json['employee_id'],
        employeeType: json['employee_type'],
        employeeNik: json['employee_nik'],
        employeeName: json['employee_name']);
  }

  Map<String, dynamic> toJson() => {
        "employeeId": employeeId,
        "employeeType": employeeType,
        "employeeNik": employeeNik,
        "employeeName": employeeName
      };
}
