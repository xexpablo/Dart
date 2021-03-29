import 'package:flutter/material.dart';
import 'package:testando/components/LogoImage.dart';
import 'LoginBox.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 500,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            LogoImage(),
            SizedBox(
              height: 50,
            ),
            //LoginBox(),
          ],
        ),
      ),
    );
  }
}
