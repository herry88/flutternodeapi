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
                  textSection(),
                  buttonSection(),
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

  Container textSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: [
          TextFormField(
            cursorColor: Colors.black,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: const InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Username',
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          TextFormField(
            // controller: passwordController,
            cursorColor: Colors.white,
            obscureText: true,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              icon: Icon(Icons.lock, color: Colors.black),
              hintText: "Password",
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.only(top: 15.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {},
        child: const Text('Login'),
      ),
    );
  }
}
