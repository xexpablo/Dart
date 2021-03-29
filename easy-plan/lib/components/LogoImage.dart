import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('assets/images/myeasyplan.png'),
        width: 350,
      ),
    );
  }
}
