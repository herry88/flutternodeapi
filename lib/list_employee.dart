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

  Future<List<Employee>> getData() async {
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
    print(response.body);
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
      body: FutureBuilder<List<Employee>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ItemList(
                  list: snapshot.data,
                )
              :  Center(
                  child:Text('Data ga Tampil')
                );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemList extends StatelessWidget {
   List list;
   ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: ListTile(
              title:Text('Test')
            ),
          ),
        );
      },
    );
  }
}
