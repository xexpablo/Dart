import 'package:flutter/material.dart';
import 'package:testando/components/LoginBox.dart';
import 'package:testando/components/LogoImage.dart';
import '../components/Background.dart';
import '../components/LogoImage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Background(),
          ],
        ),
      ),
    );
  }
}
