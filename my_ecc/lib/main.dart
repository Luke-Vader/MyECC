import 'package:flutter/material.dart';
import 'package:my_ecc/screens/wrapper.dart';
import 'package:my_ecc/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:my_ecc/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
        child: MaterialApp(
          home: Wrapper(),
        ),
    );
  }
}

