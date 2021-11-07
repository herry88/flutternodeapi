import 'package:pgncourse/model/employee.dart';
import 'package:pgncourse/repository.dart';

class EmployeeController{
  final Repository _repository;
  EmployeeController(this._repository);
  

  //function get 
  Future<List<Employee>> fetchEmployeeList() async{
    return _repository.getEmployeeList();
  }
}