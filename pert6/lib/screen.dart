import 'package:flutter/material.dart';
import 'package:pert6/notifier.dart';
import 'package:pert6/user.dart';
import 'package:provider/provider.dart';

class Welcome extends StatelessWidget {
  final User user;

  Welcome({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<UserProvider>(context).setUser(user);

    return Scaffold(
      body: Container(
        child: Center(
          child: Text("WELCOME PAGE"),
        ),
      ),
    );
  }
}
