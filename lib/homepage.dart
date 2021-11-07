import 'package:flutter/material.dart';
import 'package:pgncourse/list_employee.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: const Center(
        child: Text('Main Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Ejercicios'),
              accountEmail: Text('codigoalphacol@gmail.com'),
            ),
            ListTile(
              title: const Text("List Products"),
              trailing:const Icon(Icons.help),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ListEmployee()));
              },
            ),
             ListTile(
              title: const Text("Add Products"),
              trailing:  Icon(Icons.help),
              onTap:(){}
            ),
             const Divider(),
           
          ],
        ),
      ),
    );
  }
}
