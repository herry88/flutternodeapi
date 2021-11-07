import 'package:pgncourse/model/employee.dart';

abstract class Repository{
  //get 
  Future<List<Employee>> getEmployeeList();
}
