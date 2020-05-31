import 'dart:io';

import 'package:farmers/src/styles/textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/top_bg.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal(),
            vertical: TextFieldStyles.textBoxVertical(),
          ),
          child: email(),
        ),
        password(),
      ],
    );
  }

  Widget email() {
    if (Platform.isIOS) {
      return CupertinoTextField();
    } else {
      return TextField();
    }
  }

  Widget password() {
    if (Platform.isIOS) {
      return CupertinoTextField();
    } else {
      return TextField();
    }
  }
}
