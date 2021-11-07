import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pgncourse/model/employee.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginpage.dart';

class ListEmployee extends StatefulWidget {
  const ListEmployee({Key key}) : super(key: key);

  @override
  _ListEmployeeState createState() => _ListEmployeeState();
}

class _ListEmployeeState extends State<ListEmployee> {
  List data;
  SharedPreferences sharedPreferences;

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
          (Route<dynamic> route) => false);
    }
  }

  getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<Employee> getData() async {
    String token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTYzNjI2OTk4NSwiZXhwIjoxNjM2ODc0Nzg1fQ.CqnW3U5jh4LyyufBoxrIdMlxW616fQIN63cBJ0b98e0";
    final response = await http.get(
        Uri.parse(
          "http://node.pgncom.co.id:1700/employeedetail",
        ),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
    print('Token: ${token}');
    // print('Data Employee: ${}');
    // print(response.body);

    if (response.statusCode == 200) {
      final jsonresponse = json.decode(response.body);
      return Employee.fromJson(jsonresponse[0]);
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('ListEmployee'),
      ),
      body: FutureBuilder<Employee>(
        future: getData(),
        // ignore: missing_return
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(
                child: Text('Koneksi Terputus'),
              );
            case ConnectionState.waiting:
              return const Text(
                'Mohon Tunggu ..',
                style: TextStyle(
                  color: Colors.black,
                ),
              );
            default:
              if (snapshot.hasData) {
                return Card(
                  child: ListTile(
                    title: Text(snapshot.data.employeeName),
                  ),
                );
              } else {
                return Text('Result :${snapshot.error}');
              }
          }
        },
      ),
    );
  }
}
