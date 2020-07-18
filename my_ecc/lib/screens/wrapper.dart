import 'package:flutter/material.dart';
import 'package:my_ecc/screens/authenticate/authenticate.dart';
import 'package:my_ecc/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:my_ecc/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user != null) {
      return Home();
    } else {
      return Authenticate();
    }
  }
}
