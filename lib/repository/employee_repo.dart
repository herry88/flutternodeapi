import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pgncourse/model/employee.dart';
import 'package:pgncourse/repository.dart';

class EmployeeRepository implements Repository {
  String dataUrl = 'http://node.pgncom.co.id:1700';

  //getdata
  @override
  Future<List<Employee>> getEmployeeList() async {
    List<Employee> employee = [];
    var url = Uri.parse('$dataUrl/employeedetail');
    var response = await http.get(url, );
    print('Status Code : ${response.statusCode}');
    print('data: ${response.body}');
    var body = json.decode(response.body);
    for (var i = 0; i < body.length; i++) {
      employee.add(Employee.fromJson(body[i]));
    }
    return employee;
  }
}
