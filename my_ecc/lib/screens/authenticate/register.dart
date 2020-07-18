import 'package:flutter/material.dart';
import 'package:my_ecc/services/auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _authService = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("Sign Up"),
        elevation: 0.0,
        backgroundColor: Colors.brown[400],
      ),
      body: SafeArea(
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  print(password);
                  //_authService.signInEmail(email,password)
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
