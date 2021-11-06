import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  headerSection(),
                ],
              ),
      ),
    );
  }

  Container headerSection() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: const Text(
        "API Node",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
